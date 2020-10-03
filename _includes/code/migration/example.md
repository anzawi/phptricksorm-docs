```
# migration to create new table
php phptricks migrate:make MIGRATION_NAME create

# migration to change table schema
php phptricks migrate:make MIGRATION_NAME alter

# migration to delete table
php phptricks migrate:make MIGRATION_NAME drop
```

<p>
    The migrations will be placed in your Migrations/{migration-type} folder, and will contain a sample code <br>
    <small>initial code must not working without changes</small>.
</p>
<p>
    The <code>--table</code> and <code>-t</code> option may also be used to indicate the name of the table.
</p>

```
php phptricks migrate:make MIGRATION_NAME create --table=table_name
```
```
php phptricks migrate:make MIGRATION_NAME create -t=table_name

php phptricks migrate:make MIGRATION_NAME create -t table_name
```