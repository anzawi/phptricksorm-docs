```php
#inside model
use PHPtricks\Orm\Model;
class UserModel extends Model
{
    protected $_table = 'users';
    
    public function generateFiveUsersForTesting()
    {
        for( $i = 0; $i < 6; $i++ ) {
          $this->insert([
            'username' => "user number $i",
            'email' => "email-{$i}@phptricksORM.test",
          ]);
        }
    }
}
```

<p>and now, call the method</p>

```php
$users = new UserModel();
$users->generateFiveUsersForTesting();
```
<p>you can insert users outside model</p>

```php
$users = new UserModel();
$users->insert([
  'username' => 'Mohammad Anzawi',
  'email' => 'm.anzawi2013@gmail.com',
]);
```
<br><br>
<h4>Update User</h4>
```php
$users = new UserModel();
$users->where('id', 1) // you can use ( find(), findBy() )
       ->update([
  'username' => 'Mohammad AL-Anzawi',
]);

#======== OR ==========#
$users = new UserModel();
$user = $users->find(1); // you can use ( where(), findBy() )
$user->username = 'Mohammad AL-Anzawi';
$user->save();
```

<br><br>
<h4>Delete User</h4>
```php
$users = new UserModel();
$users->where('id', 1) // you can use ( find(), findBy() )
       ->delete();

#======== OR ==========#
$users = new UserModel();
$user = $users->find(1); // you can use ( where(), findBy() )
$user->delete();
```