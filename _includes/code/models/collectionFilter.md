```php
$users = new UserModel();

$results = $users->select();

$filteredResults = $results->filter(function($row, $key) {
    // you can use $key if you want 
    return $row->id > 15;
});

var_dump($filteredResults);

```