<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel #24 : Relasi One To Many Eloquent</title>
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- DataTable-->
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js"></script>
</head>
<body>

	<div class="container">
		<div class="card mt-5">
			<div class="card-body">
				<h5 class="text-center my-4">Eloquent One To Many Relationship</h5>
				<a href="{{ url('/') }}"><i class="btn btn-warning">Dashboard</i></a>
				<a href="{{ url('article/tambah') }}"> <i class="btn btn-success">+ Add Data </i></a>
				<br><br>
				<table class="table table-bordered table-striped" id="onetomany">
					<thead>
						<tr>
							<th>Judul Article</th>
							<th>Tag</th>
							<th width="15%" class="text-center">Jumlah Tag</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						@foreach($artikel as $a)
						<tr>
							<td>{{ $a->judul }}</td>
							<td>
								@foreach($a->tags as $t)
									{{$t->tag}},
								@endforeach
							</td>
                            
							<td class="text-center">{{ $a->tags->count() }}</td>
							<td>
								<a href="/article/edit/{{ $a->id }}" class="btn btn-primary btn-sm">edit</a>
                                <a href="/article/hapus/{{ $a->id }}" class="btn btn-danger btn-sm">Delete</a>                            
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>
<script type="text/javascript">
    $(document).ready(function() {
        $('#onetomany').DataTable();
    } );
</script>