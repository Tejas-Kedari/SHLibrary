<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%
String id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from student where student_id='"+id+"'");
	
	Statement st1 = con.createStatement();
	ResultSet rs1 = st1.executeQuery("select * from issuebook where student_id='"+id+"'");
	while(rs1.next()){
		Statement st2 = con.createStatement();
		st2.executeUpdate("delete from issuebook where student_id='"+id+"'");
	}
	
	Statement st3 = con.createStatement();
	ResultSet rs2 = st3.executeQuery("select * from returnbook where student_id='"+id+"'");
	while(rs2.next()){
		Statement st4 = con.createStatement();
		st4.executeUpdate("delete from returnbook where student_id='"+id+"'");
	}
	response.sendRedirect("studentDetails.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
}
%>