<h4>orWhere</h4>
<p>
You may chain where constraints together as well as add <kbd>or</kbd> clauses to the query. <br>
 The <code>orWhere</code> method accepts the same arguments as the <code>where</code> method:
</p>
<p><strong>Definition :</strong></p>

```php
public function orWhere($field, $operator, $value = false)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$field</td>
        <td><code>required</code> the name of the column.</td>
    </tr>
    <tr>
        <td>$operator</td>
        <td><code>required</code> where Clause operator.</td>
    </tr>
    <tr>
        <td>$value</td>
        <td><code>optional</code> value to evaluate against the column.</td>
    </tr>
</table>

```php
$model->where('active', 1)
      ->orWhere('username', 'not-active')
      ->select();
```


<br><br>
<h4>whereBetween</h4>
<p>
The <code>whereBetween</code> method verifies that a column's value is between two values:
</p>
<p><strong>Definition :</strong></p>

```php
public function whereBetween($field, array $values = [])
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$field</td>
        <td><code>required</code> the name of the column.</td>
    </tr>
    <tr>
        <td>$values</td>
        <td><code>required</code> values [from , to]</td>
    </tr>
</table>

```php
$model->whereBetween('created_at', ['10-12-2019', '1-10-2020'])
      ->select();
```

<br><br>
<h4>likeWhere</h4>
<p>
The <code>likeWhere</code> method verifies that a column's value is like a value:
</p>
<p><strong>Definition :</strong></p>

```php
public function likeWhere($field, string $value)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$field</td>
        <td><code>required</code> the name of the column.</td>
    </tr>
    <tr>
        <td>$value</td>
        <td><code>required</code> column value</td>
    </tr>
</table>

```php
$model->likeWhere('username', 'mohammad')
      ->select();

// SELECT * FROM table WHERE username LIKE '%mohammad%'
```

<br><br>
<h4>in / notIn</h4>
<p>
The <code>in</code> method verifies that a given column's value is contained within the given array, <br><br>
The <code>notIn</code> method verifies that a given column's value is <strong>NOT</strong> contained within the given array.
</p>
<p><strong>Definition :</strong></p>

```php
public function in($field, array $values = [])
public function notIn($field, array $values = [])
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$field</td>
        <td><code>required</code> the name of the column.</td>
    </tr>
    <tr>
        <td>$values</td>
        <td><code>required</code> column values</td>
    </tr>
</table>

```php
$contains = $model->in('id', [1, 2, 3, 4]);

$notContains = $model->notIn('id', [1, 2, 3, 4]);
```


<br><br>
<h4>ParseWhere</h4>
<p>
Sometimes you may need to create more advanced where clauses such as nested parameter groupings.<br>
</p>

<div class="alert-danger alert">
<p>
This method will be overwritten in the next release (v5.1.0)
</p>
</div>

<p><strong>Definition :</strong></p>

```php
public function parseWhere(array $cons, $type = "AND")
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$cons</td>
        <td><code>required</code> conditions you want to nested</td>
    </tr>
    <tr>
        <td>$type</td>
        <td><code>optional</code> where clause type [AND, OR] by default <code>AND</code></td>
    </tr>
</table>

```php
$con = [
    [
        'age', '<', '30'
    ],
    'OR' => [
        'sex', '=', 'female'
    ],
    'AND' => [
        'position', '=', 'manager'
    ]
];

// ---

$model->where('username', 'ALI')
    ->parseWhere($con)->select();
    
// SELECT * FROM table_name where username='ALI' AND (age<30 OR sex='female AND position='manager')

```
<br>

```php
$model->where('username', 'ALI')
          ->parseWhere($con, 'OR')->select();
          
// SELECT * FROM table_name where username='ALI' OR (age<30 OR sex='female' AND position='manager')

```
