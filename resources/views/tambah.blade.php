<!DOCTYPE html>
<html>
<head>
	<title>Tambah</title>
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- DataTable-->
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js"></script>

</head>
<body>

    <div class="container">
        <h3>Data Artikel</h3>
        <a href="/article"> <i class="btn btn-warning">Back</i> </a>	
        <br/>
        <br/>
		<div class="card mt-5">
			<div class="card-body">
                <form action="/article/store" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        Judul <input type="text" name="judul" class="form-control"  required="required"> <br/>
                    </div>
                    <!-- <div class="form-group">
                        Create Date <input type="date" name="created_at" class="form-control"  required="required"> <br/>
                    </div>
                    <div class="form-group">
                        Update Date <input type="date" name="updated_at" class="form-control" required="required"><br/>
                    </div> -->
                    <div class="form-group">
                        <input type="submit" value="submit" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>