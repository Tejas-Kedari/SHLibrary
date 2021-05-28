<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String uname = request.getParameter("uname");
String email = request.getParameter("email");
String password = request.getParameter("password");

int check = 0;



try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from account where username='"+uname+"' and email='"+email+"'");
	while(rs.next()){
		check = 1;
		st.executeUpdate("update account set password='"+password+"' where username='"+uname+"' and email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check == 0)
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
}
catch(Exception e){
	
}

%>