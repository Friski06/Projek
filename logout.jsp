<%
	try{
		session.removeAttribute("user");
		session.setAttribute("msg",null);
		response.sendRedirect("index.jsp");
	}catch(Exception e){

	}
%>	