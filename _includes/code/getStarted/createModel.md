```
# generate model class
php phptricks model UserModel
```
<p>you can send table name via command</p>

```
# generate model class with table name
php phptricks model UserModel --table=users
```
<br>
<h4>Generated Class</h4>

```php
use PHPtricks\Orm\Model;
class UserModel extends Model
{
    protected $_table = 'users';
}
```

<p>and now you can use this model to control users table</p>