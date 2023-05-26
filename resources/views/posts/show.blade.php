<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Show Post</title>
</head>

<body>
    <h3>{{ $post['title'] }}</h3>
    <p>{{ $post['body'] }}</p>
    <a href="{{ route('posts.index') }}" class="btn btn-secondary">Go Back</a>
</body>

</html>
