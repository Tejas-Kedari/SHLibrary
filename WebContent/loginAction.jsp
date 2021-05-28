<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String uname = request.getParameter("uname");
String password = request.getParameter("password");

int check = 0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from account where username='"+uname+"' and password='"+password+"'");
	while(rs.next()){
		check = 1;
		response.sendRedirect("main.jsp");
	}
	
	if(check == 0)
		response.sendRedirect("login.jsp?msg=notexist");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("login.jsp?msg=invalid");
}

%>