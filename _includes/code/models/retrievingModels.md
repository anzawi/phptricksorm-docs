```php
$users = new UserModel();
$users->select();

foreach ( $users as $user ) {
    echo $user->username;
}
```
<br>
<h5>Adding Additional Constraints</h5>

```php
$users = new UserModel();
$users->where('active', 0)
    ->orWhere('email', null)
    ->limit(10)
    ->offset(5)
    ->orderBy('username', 'ASC')
    ->select();
```
<br>
<h5>Get First Record</h5>

```php
$users = new UserModel();
$users->where('username', 'mohammad')
    ->first();
   // ->select()->first(); # this will work too
```

<br>
<h5>Paginate Retrieved Data :</h5>

```php
$users = new UserModel();
$paginateUsers = $users->paginate();
```

<small>pleas note: (select, first, find, findBy, paginate) methods return instance of <code>Collection Class</code></small>
<br>
<small><a href="{{ site.base_url }}dml#collection">Learn More About Collection</a></small>

<br>
<h5>Get Specified Columns :</h5>

```php
$users = new UserModel();

$allUsers      = $users->select(['username', 'email']);
$firstUser     = $users->first(['username', 'email']);
$paginateUsers = $users->paginate(['username', 'email']);
$findUser      = $users->find(['username', 'email']);
```

Check Out full documentation of <a href="{{ site.base_url }}dml#select">Retrieving Data</a>
