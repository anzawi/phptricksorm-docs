<br>
<h5>Insert : </h5>

```php
$userModel = new UserModel();

$userModel->insert([
    'username' => 'Mohammad',
    'email'    => 'email@mohammad.test',
    'active'   => 1
]);
```
<br>
<h5>Update : </h5>
```php
$userModel = new UserModel();

$user = $userModel->find(1);

$user->update([
    'username' => 'Mohammad-phptricks',
]);
```
<br>
<h6>Direct Update : </h6>

```php
$userModel = new UserModel();

$user = $userModel->find(1);

$user->username = 'Anzawi';
$user->save();
```
```php
$userModel = new UserModel();

$user = $userModel->where('username', 'mohammad')->first();

$user->username = 'Anzawi';
$user->save();
```

<br><br>
<h5>Delete : </h5>

```php
$userModel = new UserModel();

$userModel->find(1)->delete();
```
```php
$userModel = new UserModel();

$user = $userModel->where('username', 'Anzawi')->first();
$user->delete();
```