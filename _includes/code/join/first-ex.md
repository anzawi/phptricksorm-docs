```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->join()
                                 ->on('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```
<br><br>
<h3>Definitions :</h3>

```php
make({current model object})->relatedWith({model you wish to relate with current model})
                            ->join({join type [cross, left, right]})
                            ->on({foreign id on related table}, {id for current table});
```
<div class="alert alert-warning">
INNER Join Not Supported Yet !
</div>

<br><br>

<h4>Cross Join</h4>
<p></p>

```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->join()
                                 ->on('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```

<br><br>

<h4>Left Join</h4>
<p></p>

```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->join('left')
                                 ->on('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```

<br><br>

<h4>Right Join</h4>
<p></p>

```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->join('right')
                                 ->on('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```

<br><br>

<h4>Left Outer Join</h4>
<p></p>

```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->join('left')
                                 ->outer()
                                 ->on('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```


<br><br>

<h4>Right Outer Join</h4>
<p></p>

```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->join('right')
                                 ->outer()
                                 ->on('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```


<br><br>

<h4>Full Outer Join</h4>
<p></p>

```php
use PHPtricks\Orm\Model;
use MyProject\Namespace\Models\CommentModel;

class PostModel extends Model
{
    public function comments()
    {
        return $this->make($this)->relatedWith(CommentModel::class)
                                 ->fullOuterJoinOn('post_id');
    }
}

$posts = new PostModel();

$post = $posts->find(1);

foreach( $post->comments() as $comment ) {
    echo $comment->body;
}
```

<div class="alert-danger alert">
please note : Relation class under BETA-version, too many methods coming soon ;).
</div>