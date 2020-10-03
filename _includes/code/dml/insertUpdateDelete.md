<h2>Inserts :</h2>
<h4>insert</h4>
<p>
PHPtricks-ORM provides an insert method for inserting records into the database table. The insert method accepts an array of column names and values:
</p>

<p><strong>Definition :</strong></p>

```php
public function insert(array $values = [])
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$values</td>
        <td><code>required</code> array of column names and values</td>
    </tr>
</table>
<br>
<p><strong>Usage :</strong></p>

```php
$userModel->insert([
              'username' => 'mohammad',
              'email'    => 'mohammad@email.com',
              'password' => 'secret',
          ]);
```
<br><br>
<h4>lastInsertedId</h4>
<p>
PHPtricks-ORM allows you to get last inserted id.
</p>

<p><strong>Definition :</strong></p>

```php
public function lastInsertedId()
```
<br>
<p><strong>Usage :</strong></p>

```php
$userModel->insert($dataArrayToInsert);

echo $userModel->lastInsertedId();
```
<br><br>
<h4>createOrUpdate</h4>
<p>
<code>createOrUpdate</code> allows you to update if record exists, or insert if not.
</p>

<p><strong>Definition :</strong></p>

```php
public function createOrUpdate($values, $conditionColumn = [])
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$values</td>
        <td><code>required</code> array of column names and values</td>
    </tr>
    <tr>
        <td>$conditionColumn</td>
        <td><code>optional</code> condition for update, </td>
    </tr>
</table>

<div class="alert-info alert">
<p>
<code>$conditionColumn</code> is not required, so if you keep it empty the method will search on table by id.
</p>
</div>

<br>
<p><strong>Usage :</strong></p>

```php
$userModel->createOrUpdate([
              'username' => 'AL-Anzawi',
              'email'    => 'mohammad@email.com',
              'password' => 'secret',
          ], ['username', 'mohammad']);
```
<br><br>
<h2>Updates :</h2>
<p>Of course, in addition to inserting records into the database, PHPtricks-ORM can also update existing records using the update method.<br>
 The update method, like the insert method, accepts an array of column and value pairs containing the columns to be updated.<br>
  You may constrain the update query using where clauses:</p>
<br>
<h4>update</h4>

<p><strong>Definition :</strong></p>

```php
public function update($values = [])
```
<br>
<p><strong>Parameters :</strong></p>
<table class="table table-bordered">
    <tr>
        <td>$values</td>
        <td><code>required</code> array of column names and new values</td>
    </tr>
</table>

<br>
<p><strong>Usage :</strong></p>

```php
$userModel->where('id', 5)
          ->update([
              'name' => 'ali'
            ]);
```

```php
$postModel->likeWhere('title', 'test')
              ->update([
                  'title' => 'this is a test post'
              ]);
```

<br><br>
<h4>save</h4>
<p>
<code>save</code> method allows you to update values for selected record directly.
</p>
<br>
<p><strong>Definition :</strong></p>

```php
public function save()
```
<br>
<p><strong>Usage :</strong></p>

```php
$user = $userModel->find(1);

$user->username = 'Mohammad Waleed';
$user->email = 'new-email@email.test';

$user->save();
```

<br><br>
<h2>Delete</h2>
<h4>delete</h4>
<p>
delete records from the table via the <code>delete</code> method.<br>
 You may constrain delete statements by adding where clauses before calling the delete method.
</p>
<br>
<p><strong>Definition :</strong></p>

```php
public function delete()
```
<br>
<p><strong>Usage :</strong></p>

```php
$userModel->find(105)->delete();
```

<br>
<div class="alert alert-info">
<p>
<code>delete</code> method allows you to delete multiple records at once.
</p>
</div>
<br>

```php
$postModel->where('vote', "<", 2)
              ->where('visitors', '<', 200)
              ->orWhere('status', 'draft')
              ->delete();
```