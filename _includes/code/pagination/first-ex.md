```php
$users->where('is_active', 1)->paginate(10);
echo $users->dataView();
echo $users->link();
```