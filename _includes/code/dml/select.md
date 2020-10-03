<br><br>
<h2>select</h2>
<p><strong>Definition :</strong></p>

```php
public function select($fields = ['*'], $last = false)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
<tr>
    <td>$fields</td>
    <td><code>optional</code> Columns to select , by default get all columns.</td>
</tr>
<tr>
    <td>$last</td>
    <td><code>optional</code> Order retrieved data from last to start using id, by default false</td>
</tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$model = new MyModel();

$allData = $model->select();
```
<br>
<p>Get Specified Columns :</p>

```php
$model = new MyModel();

$allData = $model->select(['columns_1', 'columns_2']);
```
<br>
<p>Order Data From Last Record to First :</p>

```php
$model = new MyModel();

$allData = $model->select(['*'], true);
```
<p>
if you send <code>boolean true</code> value to first argument
<br>
the method will know that you want all columns but ordering from last to start
</p>

```php
$model = new MyModel();

$allData = $model->select(true);
// its mean
//$allData = $model->select(['*'] ,true);
```

<br><br>

<h4>Adding Additional Constraints :</h4>

```php
$model = new MyModel();

$allData = $model->where('column_table', 'operation', 'value')
                 ->limit($recordsNumber)
                 ->select(['columns_1', 'columns_2']);
```

<br><br>
<h2>first</h2>
<p><strong>Definition :</strong></p>

```php
public function first()
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
<tr>
    <td>$fields</td>
    <td><code>optional</code> Columns to select , by default get all columns.</td>
</tr>
<tr>
    <td>$last</td>
    <td><code>optional</code> Order retrieved data from last to start using id, by default false</td>
</tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$model = new MyModel();

$singleRecord = $model->first();
```
<br>
<p>Get Specified Columns :</p>

```php
$model = new MyModel();

$singleRecord = $model->first(['columns_1', 'columns_2']);
```
<br>
<p>Order Data From Last Record to First :</p>

```php
$model = new MyModel();

$singleRecord = $model->first(['*'], true);
```
<p>
if you send <code>boolean true</code> value to first argument
<br>
the method will know that you want all columns but ordering from last to start
</p>

```php
$model = new MyModel();

$allData = $model->first(true);
// its mean
//$allData = $model->first(['*'] ,true);
```

<br><br>

<h4>Adding Additional Constraints :</h4>

```php
$model = new MyModel();

$singleRecord = $model->where('column_table', 'operation', 'value')
                 ->first(['columns_1', 'columns_2']);
```

<br><br>
<h2>find</h2>
<p><strong>Definition :</strong></p>

```php
public function find($id)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
<tr>
    <td>$id</td>
    <td><code>required</code> id value.</td>
</tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$model = new MyModel();

$find = $model->find($id);
```
<small>find method return single record</small>

<br><br>
<h2>findBy</h2>
<p><strong>Definition :</strong></p>

```php
public function findBy($column, $value)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
<tr>
    <td>$column</td>
    <td><code>required</code> Column Name</td>
</tr>
<tr>
    <td>$value</td>
    <td><code>required</code> Column Value.</td>
</tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$model = new MyModel();

$findBy = $model->findBy('username', $usernameValue);
$findBy->select();
$findBy->first();
```

<small>findBy method return Model Class</small>


<br><br>
<h2>paginate</h2>
<p><strong>Definition :</strong></p>

```php
public function paginate($recordsCount = 0, $last = false)
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
<tr>
    <td>$recordsCount</td>
    <td><code>optional</code> records count in page. by default value is coming from configuration</td>
</tr>
<tr>
    <td>$last</td>
    <td><code>optional</code> Order retrieved data from last to start using id, by default false</td>
</tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$model = new MyModel();

$data = $model->pagenate();
```

<br>
<p>Order Data From Last Record to First :</p>

```php
$model = new MyModel();

$allData = $model->pagenate($recordsCount, true);
```
<p>
if you send <code>boolean true</code> value to first argument
<br>
the method will know that you want all columns but ordering from last to start
</p>

```php
$model = new MyModel();

$allData = $model->paginate(true);
```

<br><br>

<h4>Adding Additional Constraints :</h4>

```php
$model = new MyModel();

$allData = $model->where('column_table', 'operation', 'value')
                 ->orWhere('column_table', 'operation', 'value')
                 ->limit($recordsNumber)
                 ->paginate();
```

<p>Check out this page to learn how you can create pagination with pages numbers links with 3 lines of code</p>

<br><br><br>
<h2>query</h2>
<p><strong>Definition :</strong></p>

```php
protected function query($sql, $params = [])
```
<div class="alert alert-warning">
<p>
<kbd>query</kbd> method is protected scope by default <br>
its for advanced usage, you can change scope to public if you want.<br>
you must know SQL Commands.
</p>
<p>
<kbd>query</kbd> method not for retrieve data only! <br>
you can use it for any SQL Command (DDL, DML, DCL, TCL) <br>
that mean you can use it to achieve unsupported things in PHPtricks-ORM Library Like (Create Database Users)
</p>
</div>

<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
<tr>
    <td>$sql</td>
    <td><code>required</code> SQL Command.</td>
</tr>
<tr>
    <td>$params</td>
    <td><code>optional</code> Parameters to bind in Command</td>
</tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$model = new MyModel();

$data = $model->query($sqlStatement);
```

```php
$model = new MyModel();

$data = $model->query("SELECT * FROM users WHERE active=:active", ['active' => 0]);
var_dump($data->select());
```
```php
$model = new MyModel();

$model->query("CREATE TABLE MyTable (
               id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
               firstname VARCHAR(30) NOT NULL,
               lastname VARCHAR(30) NOT NULL,
               email VARCHAR(50),
               reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP");
```

```php
$model = new MyModel();

$model->query("CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password'");
$model->query("GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost'");
```
<div class="alert-danger alert">
<p>
take care with <code>GRANT PRIVILEGES</code> to users, be safe.
</p>
</div>