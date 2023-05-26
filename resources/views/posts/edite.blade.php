<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Edite</title>
</head>

<body>
    <div class="container py-5">
        <form action="{{ route('posts.update', ['post' => $post['id']]) }}" method="POST">
            @csrf
            @method('PUT')
            <input type="hidden" class="form-control" name="id" value="{{ $post['id'] }}">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Title</label>
                <input type="text" class="form-control" name="title" value="{{ $post['title'] }}"
                    id="exampleInputEmail1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text text-danger">
                    @error('title')
                        {{ $message }}
                    @enderror
                </div>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Body</label>
                <input type="text" class="form-control" name="body" value="{{ $post['body'] }}"
                    id="exampleInputPassword1">
                <div id="emailHelp" class="form-text text-danger">
                    @error('body')
                        {{ $message }}
                    @enderror
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="Update">
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>
