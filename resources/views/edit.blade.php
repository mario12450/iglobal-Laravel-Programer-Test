<!DOCTYPE html>
<html>
<head>
	<title>Edit</title>
    <!-- bootstrap -->
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
                <h3>Edit Artikel</h3>
                <a href="/article"> <i class="btn btn-warning">Back</i> </a>	
                <br/><br/>
                @foreach($artikel as $a)
                <form action="/article/update" method="post">
                    {{ csrf_field() }}
                    <input type="hidden" name="id" value="{{ $a->id }}"> <br/>
                    Judul <input type="text" class="form-control" required="required" name="judul" value="{{ $a->judul }}"> <br/>
                    <!-- Created At <input type="date" class="form-control" required="required" name="created_at" value="{{ $a->created_at }}"> <br/>
                    Updated at <input type="date" class="form-control" required="required" name="updated_at" value="{{ $a->updated_at }}"> <br/> -->
                    
                    <input type="submit" value="Simpan Data" class="btn btn-primary">
                </form>
                @endforeach
            </div>
        </div>
    </div> 
            
		

</body>
</html>