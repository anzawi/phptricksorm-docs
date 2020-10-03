---
layout: default
icon: list-alt
title: Change-Log
nav_order: 10
description: ''
permalink: /change-log/
last-update: 14/8/2020
---
<style>
ul li{
    line-height: 1.9;
}
</style>
<br><br><br>

#### 5.0.0
* ADD : Modeling System  
* ADD : Migrations
* ADD : Commands-line
* ADD : Joins [Models Relation]
* ADD : `toJsonFormatted()` method
* ADD : `groupBy()` method
* ADD : `drop()` method - to delete tables
* MODIFY : Database Class 
* MODIFY : `toArray()` Method 

<div class="alert-danger alert">
please note: version 5.0.0 not compatible with old versions. <br>
if you using PHPtricks-ORM v4.x.x or older in your project and you want to upgrade to v5.0.0,<br> 
you need to change a lot of things to meet new version.
</div>

---

#### 4.1.0
* ADD : `parseWhere(array $cons, $type = "AND")` method
* ADD : `lastInsertedId()` method
* ADD : `createOrUpdate($values, $conditionColumn = [])` method
* ADD : `findBy($column, $value)` method
* REMOVE: `empty()` method

---

#### 4.0.0
* MODIFY : namespace to `PHPtricks\Orm`
* MODIFY : files structure

---

#### 3.1.0
* FIX : Duplicate connection
* ADD : Some methods
    * `each()` -> to each all collection values
    * `map()`  -> to map all results
    * `all()`  -> to get all results
    * `last()` -> to get last selected record
    * `filter()` -> to filter values
    * `keys()` -> to get collection keys
    * `toJson()` -> to convert results to json format
* ADD : convert results to json format when use collection as string automatically


---


#### 3.0.0
* ADD    : direct update functionality
* FIX    : `dataView` method with first method
* MODIFY : methods chaining technique
    * `select`, `first`, `find`, `paginate` NOW return Database Object
    * but you can use results as array or object
    * any time you can add `->results()` to convert to array or object


---

#### 2.1.0
* Add : pagination functionality
* Add : count method
* Add : `dataView` method (to display 'selected results' in a table)
* FIX : `in()` method
* FIX : `notIn()` method


---


#### 2.0.0
* ADD : supports multi `drivers`
    * mysql
    * PostgreSQL
    * sqlite
    * msSql
    * sybase
    * Oracle Call Interface (OCI)
* ADD : multi where
* ADD : type of where
* ADD : show query
* FIX : default constraint
* ADD : limit function
* ADD : offset function
* rebuilt 80% of methods
* change License terms


---


#### 1.1.0

* ADD Some Data Definition Language (DDL) functions.
  * ADD Create New Table 
  * ADD Drop Table
  * ADD Alter Table
    * ADD new Column
    * Change Column Name
    * Drop Column
    * Rename Column


---


#### 1.0.1
* FIX: `first()` method to compatible with PHP V +5.3.0


---


#### 1.0.0
* First Release