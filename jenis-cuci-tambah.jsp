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

    <title>Doorsmeer - Tambah Jenis Cuci</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.jsp">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Jenis</h1>
                                   

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table-responsive">
                            <form action="" method="post">

                                <div class="form-group">
                                    <label>Nomor Cuci</label>
                                    <input type="number" name="no" class="form-control" placeholder="Masukkan Nomor">
                                </div>

                                <div class="form-group">
                                    <label>Jenis</label>
                                    <input type="text" name="jenis_cuci" class="form-control" placeholder="Masukkan Jenis">
                                </div>

                                <div class="form-group">
                                    <label>Harga Cuci</label>
                                    <input type="number" name="harga" class="form-control" placeholder="Masukkan Harga">
                                </div>                                
                                
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <a href="jenis-cuci.jsp" class="btn btn-primary">Kembali</a>

                                </form>
                            </div>
                        </div>
                    </div>                    
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>

<%@page import = "java.sql.Connection, java.sql.DriverManager, java.sql.Statement, java.sql.ResultSet" %>

    <% 
    boolean cek = false;
    String Sno    = request.getParameter("no");
    String Sjenis = request.getParameter("jenis_cuci");
    String Sharga = request.getParameter("harga");
    
    PreparedStatement stat = null;
   
    if (Sno!=null && Sjenis!=null && Sharga!=null) {
        String data = "insert into tb_jenis(no,jenis_cuci,harga) values(?,?,?)";
        stat = conn.prepareStatement(data);
        stat.setString(1,Sno);
        stat.setString(2,Sjenis);
        stat.setString(3,Sharga);
        
        stat.executeUpdate();

        response.sendRedirect("jenis-cuci.jsp");
        
    }
    %>
