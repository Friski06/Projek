<%@page import = "java.sql.*" %>

<%
    String id = request.getParameter("d");
    int no = Integer.parseInt(id);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/laundry","root","");
    Statement stat = conn.createStatement();
    stat.executeUpdate("delete from tb_jenis where id='"+no+"'");
    response.sendRedirect("jenis-cuci.jsp");
%>

 
 