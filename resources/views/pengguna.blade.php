<!DOCTYPE html>
<html>
<head>
	<title>One To One Eloquent</title>
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
				<h3 class="text-center my-4">One To One</h3>
                <a href="{{ url('/') }}"><i class="btn btn-warning">Dashboard</i></a>
                <!-- <a href="{{ url('pengguna/tambah') }}"> <i class="btn btn-success">+ Add Data </i></a> -->
				<br><br>
                <table class="table table-bordered table-striped" id="onetoone">
					<thead>
						<tr>
                            <!-- <th>ID</th> -->
                            <th>No.</th>
							<th>Employee Name</th>
							<th>Telephone</th>
                            <!-- <th>Action</th> -->
						</tr>
					</thead>
					<tbody>
                        @php $no = 1; @endphp
						@foreach($pengguna as $p)
                        <!-- var_dump{{$p}}; -->
						<tr>                       
                            <!-- <td>{{ $p->id}}</td> -->
                            <td>{{ $no++ }}</td>
							<td>{{ $p->nama }}</td>
							<td>{{ $p->telepon->nomor_telepon }}</td>
                            <!-- <td>
                                <a href="/pengguna/edit/{{ $p->id }}" class="btn btn-primary btn-sm">edit</a>
                                <a href="/pengguna/hapus/{{ $p->id }}" class="btn btn-danger btn-sm">Delete</a>
                            </td> -->
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
        $('#onetoone').DataTable();
    } );
</script>