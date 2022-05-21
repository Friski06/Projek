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

    <title>Laundryki - Tambah Karyawan</title>

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
                    <h1 class="h3 mb-2 text-gray-800">Tambah Karyawan</h1>
                                   

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table-responsive">
                            <form action="" method="post">
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text" name="id" class="form-control" placeholder="Masukkan ID">
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama">
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea name="alamat" class="form-control" placeholder="Masukkan Alamat"></textarea>
                                    <%-- <input type="text" name="alamat" class="form-control" placeholder="Masukkan Plat"> --%>
                                </div>
                                <div class="form-group">
                                    <label>No Hp</label>
                                    <input type="number" name="np_hp" class="form-control" placeholder="Masukkan No HP">
                                </div>
                                
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <a href="karyawan.jsp" class="btn btn-primary">Kembali</a>

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

    String Sid      = request.getParameter("id");
    String Snama    = request.getParameter("nama");
    String Salamat  = request.getParameter("alamat");
    String Shp      = request.getParameter("np_hp");
    
    PreparedStatement stat = null;
    
    if (Sid!=null && Snama!=null && Salamat!=null && Shp!=null) {
        String data = "insert into tb_karyawan(id,nama,alamat,np_hp) values(?,?,?,?)";
        stat = conn.prepareStatement(data);
        stat.setString(1,Sid);
        stat.setString(2,Snama);
        stat.setString(3,Salamat);
        stat.setString(4,Shp);
        
        stat.executeUpdate();
        response.sendRedirect("karyawan.jsp");
        
    }
    %>
