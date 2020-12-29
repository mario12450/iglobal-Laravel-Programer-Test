<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel #25 : Relasi Many To Many Eloquent</title>
     <!-- bootstrap versi 3 -->
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
                <h5 class="text-center my-4">Eloquent Many To Many Relationship</h5>
                <a href="{{ url('/') }}"><i class="btn btn-warning">Dashboard</i></a>
                <br><br>
				<table class="table table-bordered table-striped" id="manytomany">
					<thead>
						<tr>
							<th>Nama Pengguna</th>
							<th>Hadiah</th>
							<th width="1%">Jumlah</th>
						</tr>
					</thead>
					<tbody>
						@foreach($anggota as $a)
						<tr>
							<td>{{ $a->nama }}</td>
							<td>
								<ul>
									@foreach($a->hadiah as $h)
									<li> {{ $h->nama_hadiah }} </li>
									@endforeach
								</ul>
							</td>
							<td class="text-center">{{ $a->hadiah->count() }}</td>
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
        $('#manytomany').DataTable();
    } );
</script>