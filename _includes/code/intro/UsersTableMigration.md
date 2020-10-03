```php
<?php

require_once 'vendor/autoload.php';

use PHPtricks\Orm\Builder;
class UsersTable extends Builder
{
    protected $_table = 'users';

    public function run()
    {
        return $this->schema([
            'id' => 'increments',
            'username' => 'string:255|not_null|unique',
            'is_active' => 'int|default:0',
            'email' => 'string:255|not_null|unique',
            'created_at' => 'timestamp',
        ])->create();
    }
}
```