<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Posts</title>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
        i {
            color: #f00;
            cursor: pointer;
            font-size: 30px
        }
    </style>
</head>

<body>

    <div class="p-5 ">
        <div class="container">
            @if (session('status'))
                <div class="alert alert-info d-flex justify-content-between align-items-center">
                    <p>{{ session('status') }}</p> <i class="close-alert">x</i>
                </div>
            @endif
            <table id="example" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>#ID</th>
                        <th>Title</th>
                        <th>Body</th>
                        <th>Created_at</th>
                        <th>Updated_at</th>
                        <th>Control</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($posts as $post)
                        <tr>
                            <td>{{ $post['id'] }}</td>
                            <td>{{ $post['title'] }}</td>
                            <td>{{ $post['body'] }}</td>
                            <td>{{ $post['created_at'] }}</td>
                            <td>{{ $post['updated_at'] }}</td>
                            <td class="d-flex">
                                <a href="{{ route('posts.edit', ['post' => $post['id']]) }}"
                                    class="btn btn-secondary ">Edite</a>
                                <a href="{{ route('posts.show', ['post' => $post['id']]) }}"
                                    class="btn btn-primary">Show</a>
                                <form action="{{ route('posts.destroy', ['post' => $post['id']]) }}" method="post">
                                    @csrf
                                    @method('delete')
                                    <input type="submit" class="btn btn-danger"
                                        onclick="return confirm('Are You Soure Delete This Products ?')" value="Delete">
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <a href="{{ route('posts.create') }}">+ New Post</a>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="{{ url('js/main.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
</body>


</html>
