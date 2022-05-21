<%@page import = "java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="koneksi.jsp"%>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

   <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">                
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <p class="form-control text-center"> Username: admin || pass: admin</p>
                                        
                                        <form action="login.jsp" method="post">
                                            <div class="form-group">
                                                <label class="small mb-1">Username</label>
                                                <input class="form-control py-4" type="text" name="user" placeholder="Masukkan Username" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1">Password</label>
                                                <input class="form-control py-4" type="password" name="pass" placeholder="Masukkan Password" />
                                            </div>
                                          
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button class="btn btn-primary" type="submit">Login</button>
                                            </div>
                                        </form>
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
           
        </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>