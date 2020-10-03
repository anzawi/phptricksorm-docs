<h3>Create Table : </h3>

```php
use PHPtricks\Orm\Bulder;

class CreateTable extends Bulder
{
    protected $_table = 'table_name';

    public function run()
    {
        return $this->schema($schemaAsArray)->create();
    }   
}
```
EX : 

```php
use PHPtricks\Orm\Bulder;

class CreateTable extends Bulder
{
    protected $_table = 'students';

    public function run()
    {
        return $this->schema([
                               'id' => 'increments',
                               'name' => 'string:255 | not_null',
                               'number' => 'int|unsigned',
                            ])->create();
    }   
}
```
<br>

the SQL Statement for this :

```sql
CREATE TABLE students (
						id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
						name VARCHAR(255) NOT NULL,
						number INT UNSIGNED
					
					)
```    

<br>					
<h4>PLEAS NOTE:</h4> 
`'id' => 'increments'`
mean the id column well be `integer`,`primary key`, `auto increment`, `not null`,  and `unsigned` .
<br><br>

<h4>ADD Constraints</h4>
```php
'number' => 'int|my_constraint|other_constraint|more_constraint';
```

<br>
SO the first one is a column type and others well be Constraints

<br><br>
<h4>Default Value</h4>

to set default value type :
<br>
```php
'number' => 'int|unsigned|default:222';
'name' => 'int|unsigned|default:hello-this-a-default-value';

// note : the character (-) replaced with white space
```
<br><br>
<h4>Full Example :</h4>

```php
use PHPtricks\Orm\Builder;

class CreateUsersTable extends Builder
{
    protected $_table = 'users';

    private $_schema = [
        'id' => 'increments',
        'username' => 'string:100|not_null',
        'full_name' => 'string:255|default:no-name',
        'joined' => 'timestamp',
        'user_email' => 'string:100|not_null',
    ];

    public function run()
    {
        return $this->schema($this->_schema)->create();
    }
}
```
<br><br>


<h2>ADD Column : </h2>

```php
$userTable = new CreateUsersTable();

$userTable->alterSchema(['add', 'column_name', 'type'])->alter();
```

<br>
or inside class :
<br>
EX:

```php
use PHPtricks\Orm\Builder;

class CreateUsersTable extends Builder
{
    protected $_table = 'users';

    public function addColumn($colName, $colType)
    {
        $this->alterSchema(['add', $colName, $colType])->alter();
    }
}
```
<br><br>

<h2>RENAME Column :</h2>

```php
$userTable = new CreateUsersTable();

$userTable->alterSchema(['rename', 'last_login', 'last_session'])->alter();
```

<br><br>
<h2>EDIT Column  type:</h2>

```php
$userTable = new CreateUsersTable();
$userTable->alterSchema(['modify', 'full_name', 'text'])->alter();
```
<br><br>
<h2>DROP Column :</h2>

```php
$userTable = new CreateUsersTable();

$userTable->alterSchema(['drop', 'full_name'])->alter();
```

<br><br>
<h2>DROP Table :</h2>

```php
$userTable = new CreateUsersTable();

$userTable->drop();
```