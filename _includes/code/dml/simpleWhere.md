```php
class PostModel extends Models
{
    protected $_table = 'posts';
    
    public function getDraftPosts()
    {
        return $this->where('status', '=', 'draft')
                    ->select();
    }   
}
```

```php
$users = new UserModel();
$inActiveUsers = $users->where('active', '=', 0)->select();
```
<br>
<p>
For convenience, if you want to verify that a column is equal to a given value, you may pass the value directly as the second argument to the <code>where</code> method:
</p>

```php
class PostModel extends Models
{
    protected $_table = 'posts';
    
    public function getDraftPosts()
    {
        return $this->where('status', 'draft')
                    ->select();
    }   
}
```

```php
$users = new UserModel();
$inActiveUsers = $users->where('active', 0)->select();
```