<h4>all</h4>
<p>convert data to [array, object] that how you configure <code class="language-plain-text">fetch</code></p>

<br>

<p><strong>Definition</strong></p>

```php
public function all()
```

<br>

<p><strong>Usage</strong></p>

```php
$model = new MyModel();
$data = $model->select();

var_dump($data->all());
```

<br><br>

<h4>first</h4>
<p>get first record as [array, object] that how you configure <code class="language-plain-text">fetch</code></p>

<br>

<p><strong>Definition</strong></p>

```php
public function first()
```

<br>

<p><strong>Usage</strong></p>

```php
$model = new MyModel();
$data = $model->select();

var_dump($data->first());
```

<br><br>

<h4>last</h4>
<p>get last record as [array, object] that how you configure <code class="language-plain-text">fetch</code></p>

<br>

<p><strong>Definition</strong></p>

```php
public function last()
```

<br>

<p><strong>Usage</strong></p>

```php
$model = new MyModel();
$data = $model->select();

var_dump($data->last());
```

<br><br>

<h4>each</h4>
<p>foreach data and do something with callback</p>

<br>

<p><strong>Definition</strong></p>

```php
public function each(callable $callback)
```
<br>
<p><strong>Parameters</strong></p>
<table class="table table-bordered">
<tr>
<td>$callback</td>
<td><code>required</code> callback function to applied on data.</td>
</tr>
</table>


<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->where('active', 0)->select();

$processedData = $data->each(function ($row) {
    return $row->nots . ' - not active';
});
```

<br><br>

<h4>filter</h4>
<p>Filters elements of a data using a callback function</p>

<br>

<p><strong>Definition</strong></p>

```php
public function filter(callable $callback = null)
```
<br>
<p><strong>Parameters</strong></p>
<table class="table table-bordered">
<tr>
<td>$callback</td>
<td><code>optional</code> callback function to applied on data.</td>
</tr>
</table>


<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->where('active', 0)->select();

$filteredData = $data->filter(function($row) {
    return $row->id > 15;
});
```
```php
$users = new UserModel();
$data = $users->where('active', 0)->select();

$filteredData = $data->filter(function($row, $key) {
    // echo $key;
    return $row->active != 0;
});
```
<br>
<p>if you want to filter data to remove [empty or null] values, just call filter without a callback</p>

```php
$users = new UserModel();
$data = $users->where('active', 0)->select();

// exclude null and empty values !
$filteredData = $data->filter();
```


<br><br>

<h4>map</h4>
<p>Applies the callback to the elements of the given data</p>

<br>

<p><strong>Definition</strong></p>

```php
public function map(callable $callback)
```
<br>
<p><strong>Parameters</strong></p>
<table class="table table-bordered">
<tr>
<td>$callback</td>
<td><code>required</code> callback function to applied on data.</td>
</tr>
</table>


<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->where('active', 0)->select();

$processedData = $data->map(function ($row) {
    // callback
});
```
<br><br>

<h4>keys</h4>
<p>get columns name.</p>

<br>

<p><strong>Definition</strong></p>

```php
public function keys()
```

<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->select();

var_dump($data->keys());
```
<br><br>

<h4>toJson</h4>
<p>convert data to [string] json format.</p>

<br>

<p><strong>Definition</strong></p>

```php
public function toJson()
```

<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->select();

echo $data->toJson();
```
<br><br>

<h4>toJsonFormatted</h4>
<p>convert data to readable [string] json format.</p>

<br>

<p><strong>Definition</strong></p>

```php
public function toJsonFormatted()
```

<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->select();

echo $data->toJsonFormatted();
```

<br><br>

<h4>merge</h4>
<p>merge 2 collections together</p>

<br>

<p><strong>Definition</strong></p>

```php
public function merge($items)
```
<br>
<p><strong>Parameters</strong></p>
<table class="table table-bordered">
<tr>
<td>$items</td>
<td><code>required</code> the data you want to marge with.</td>
</tr>
</table>


<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->where('active', 0)->select();
$anotherData = $users->where('active', 1)->select();

$mergedData = $data->marge($anotherData);
```

<br><br>

<h4>toArray</h4>
<p>convert data to array.</p>

<br>

<p><strong>Definition</strong></p>

```php
public function toArray()
```

<br>

<p><strong>Usage</strong></p>

```php
$users = new UserModel();
$data = $users->where('active', 0)->select();

var_dump($data->toArray());
```