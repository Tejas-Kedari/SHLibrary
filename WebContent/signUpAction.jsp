<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String uname = request.getParameter("uname");
String email = request.getParameter("email");
String password = request.getParameter("password");


try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into account values(?, ?, ?)");
	ps.setString(1, uname);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.executeUpdate();
	response.sendRedirect("signUp.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	//response.sendRedirect("signUp.jsp?msg=wrong");
}

%>