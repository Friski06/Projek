<%
String host = "jdbc:mysql://localhost/laundry";
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(host,"root","");
%>