```
# create migration to create table command
php phptricks migrate:make  CreateUsersTable create
```
<p>
this command will generate class file
file directory/name: Migrations/create/CreateUsersTable.php
class name: CreateUsersTable
</p>
<br>
<p>
you can send <code>--table=table_name</code> or <code>-t=table_name</code> or <code>-t table_name</code> <br>
set your table name
</p>
```
# set table name fo migration command
php phptricks migrate:make  CreateUsersTable create --t=users
```
<br>
<h4>Generated Class :</h4>

```php
<?php

require_once 'vendor/autoload.php';

use PHPtricks\Orm\Builder;
class CreateUsersTable extends Builder
{
    // if -table option sent
    protected $_table = 'users';
    // if -table option not sent
    // protected $_table = 'table_name';

    public function run()
    {
        return $this->schema([
            'id' => 'increments',
            'string' => 'string:255|not_null|unique',
            'datetime' => 'datetime',
            'integer' => 'int|unsigned',
            'unique' => 'string:255|not_null|unique',
            'created_at' => 'timestamp',
        ])->create();
    }
}
```
<small>change table schema to meet what you want</small>

<p>
run migrate command to generate table in database.
</p>

```
php phptricks migrate
```
