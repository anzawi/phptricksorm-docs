```php
"pagination" => [
    "no_data_found_message" => "Oops, No Data Found to show ..",
    "records_per_page"      => 10,
    "link_query_key"        => "page",
],
```

<br>

<table class="table-bordered table">
    <tr>
        <td>
            no_data_found_message
        </td>
        <td>
            Message will returned if no data returned from your query.
        </td>
    </tr>
     <tr>
            <td>
                records_per_page
            </td>
            <td>
                Records you want to retrieve.
            </td>
        </tr>
        <tr>
            <td>
                link_query_key
            </td>
            <td>
                uri query key name <code>https://your-website.com?page=3</code>.
            </td>
        </tr>
</table>