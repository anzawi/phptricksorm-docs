```php
$postsModel = new PostModel();
$posts = $postsModel->paginate(20);
```
<p>
using <code class="plain-text">paginate()</code> without sending records count <br>
that make PHPtricks-ORM use the count you set in config.
</p>

```php
$postsModel = new PostModel();
$posts = $postsModel->paginate();
```

<br><br>
<h4>View Data in Table :</h4>

```php
$postsModel = new PostModel();
$posts = $postsModel->paginate();

echo $posts->dataView();
```
<table border="1">
<thead>
<tr>
<th>First Column</th>
<th>second Column</th>
<th>Third Column</th>
</tr>
</thead>
<tbody>
<tr>
<td>Data...</td><td>Foo</td><td>Barr</td>
</tr>
</tbody>
</table>

<br><br>
<h4>Generate Links :</h4>

```php
$postsModel = new PostModel();
$posts = $postsModel->paginate();
echo $posts->dataView();

echo $posts->link();
```