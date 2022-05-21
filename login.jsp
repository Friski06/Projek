<%@page import = "java.sql.*"%>
<%@include file="koneksi.jsp"%>

<%
    String user  = request.getParameter("user");
    session.putValue("user",user);
    String pass = request.getParameter("pass");

    Statement st = null;
    ResultSet rs = null;
    
    st = conn.createStatement();

    String qry = "select * from admin where user='"+user+"' and pass='"+pass+"'";
    rs = st.executeQuery(qry);
    
    try{
        
        rs.next();
        if (rs.getString("password").equals(pass)&&rs.getString("username").equals(user)) {
            // session.setAttribute("user",user);
            response.sendRedirect("beranda.jsp");
            
        }else{
            response.sendRedirect("index.jsp");
        }
    }catch(Exception e){

    }

    
%>