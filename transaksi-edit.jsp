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

    <title>Doorsmeer - Transaksi Edit</title>

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
                    <h1 class="h3 mb-2 text-gray-800">Transaksi</h1>
                                   

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="table-responsive">

                                <%
                                    Statement stat = null;
                                    ResultSet hasil = null;
                                    PreparedStatement stmt = null;
                                %>

                            <form action="" method="post">
                                <%
                                    stat = conn.createStatement();
                                    String u = request.getParameter("u");
                                    int num = Integer.parseInt(u);
                                    String data = "select * from tb_transaksi where no='"+no+"'";
                                    hasil = stat.executeQuery(data);
                                    while(hasil.next()){
                                %>
                                <input type="hidden" name="id" value='<%=hasil.getString("id")%>' />
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" name="ubahnama" class="form-control" value='<%=hasil.getString("nama")%>' />
                                </div>
                                <div class="form-group">
                                    <label>Plat Kendaraan</label>
                                    <input type="text" name="ubahplatkendaraan" class="form-control" value='<%=hasil.getString("platkendaraan")%>' />
                                </div>
                                <div class="form-group">
                                    <label>Jenis Cuci</label>
                                    <input type="text" name="ubahjeniscuci" class="form-control" value='<%=hasil.getString("jeniscuci")%>' />
                                </div>
                                <div class="form-group">
                                    <label>Petugas</label>  
                                    <input type="text" name="ubahpetugas" class="form-control" value='<%=hasil.getString("petugas")%>' />
                                </div>
                                <div class="form-group">
                                    <label>Tanggal</label>
                                    <input type="date" name="ubahtgl" class="form-control" value='<%=hasil.getString("tgl")%>' />
                                </div>
                                <div class="form-group">
                                    <label>Harga</label>
                                    <input type="number" name="ubahharga" class="form-control" value='<%=hasil.getInt("harga")%>' />
                                </div> 

                                <%
                                   }
                                %>  

                             <!--  -->                    
                                
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <a href="transaksi.jsp" class="btn btn-primary">Kembali</a>


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
<%
String idd       = request.getParameter("id");
String nama     = request.getParameter("ubahnama");
String plat     = request.getParameter("ubahplatkendaraan");
String jenis    = request.getParameter("ubahjeniscuci");
String petugas  = request.getParameter("ubahpetugas");
String tgl      = request.getParameter("ubahtgl");
String harga    = request.getParameter("ubahharga");
if (idd!=null && nama!=null && plat!=null && jenis!=null && petugas!=null && tgl!=null && harga!=null) {
    String query = "update tb_transaksi set platkendaraan=?, nama=?, jeniscuci=?, petugas=?, tgl=?, harga=? where id='"+idd+"'";
    stmt = conn.prepareStatement(query);
    stmt.setString(1, plat);
    stmt.setString(2, nama);
    stmt.setString(3, jenis);
    stmt.setString(4, petugas);
    stmt.setString(5, tgl);
    stmt.setString(6, harga);
    stmt.executeUpdate();
    response.sendRedirect("transaksi.jsp");
}
%>