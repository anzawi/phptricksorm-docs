<h4>orderBy</h4>
<p>
The <code>orderBy</code> method allows you to sort the result of the query by a given column.<br>
</p>

<p><strong>Definition :</strong></p>

```php
public function orderBy($colName, string $type = 'ASC')
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$colName</td>
        <td><code>required</code> column you wish to sort by,.</td>
    </tr>
    <tr>
        <td>$type</td>
        <td><code>required</code> direction of the sort may be either <kbd>ASC</kbd> or <kbd>DESC</kbd>. default <code>ASC</code></td>
    </tr>
</table>

<div class="alert alert-info">
<p>
<code>$type</code> argument can be UPPERCASE or lowercase.
</p>
</div>
<br>
<p><strong>Usage :</strong></p>

```php
$users = $userModel->orderBy('username', 'desc')->select();
```

<br>
<br>
<h4>groupBy</h4>
<p>
The <code>groupBy</code> method allows you to group the result of the query by a given column.<br>
</p>

<p><strong>Definition :</strong></p>

```php
public function groupBy(string $colName)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$colName</td>
        <td><code>required</code> column you wish to group by,.</td>
    </tr>
</table>
<br>
<p><strong>Usage :</strong></p>

```php
$users = $userModel->groupBy('username')
                   ->orderBy('username', 'desc')->select(['COUNT(id)']);
```


<br>
<br>
<h4>limit</h4>
<p>
The <code>limit</code> method to limit the number of results returned from the query.<br>
</p>

<p><strong>Definition :</strong></p>

```php
public function limit($limit)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$limit</td>
        <td><code>required</code> returned records count limit</td>
    </tr>
</table>
<br>
<p><strong>Usage :</strong></p>

```php
$users = $userModel->limit(15)->select();
```

```php
$users = $userModel->likeWhere('username', 'mohammad')
                   ->limit(10)
                   ->select();
```
<br>
<br>
<h4>offset</h4>
<p>
The <code>offset</code> method to skip a given number of results in the query.<br>
</p>

<p><strong>Definition :</strong></p>

```php
public function offset($limit)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$offset</td>
        <td><code>required</code> skipped records number</td>
    </tr>
</table>
<br>
<p><strong>Usage :</strong></p>

```php
$users = $userModel->offset(15)->select();
```

```php
$users = $userModel->likeWhere('username', 'mohammad')
                   ->offset(15)
                   ->limit(10)
                   ->select();
```