<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>



<%
String s_id = request.getParameter("s_id");
String sname= request.getParameter("name");
String fname = request.getParameter("fname");
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String year = request.getParameter("year");
String semester = request.getParameter("semester");


//out.print(s_id+" "+sname+" "+fname+" "+course+" "+branch+" "+year+" "+semester);
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into student values(?, ?, ?, ?, ?, ?, ?)");
	ps.setString(1, s_id);
	ps.setString(2, sname);
	ps.setString(3, fname);
	ps.setString(4, course);
	ps.setString(5, branch);
	ps.setString(6, year);
	ps.setString(7, semester);
	ps.executeUpdate();
	response.sendRedirect("addStudent.jsp?msg=done");
}
catch(Exception e){
	System.out.println("addStudent.jsp?msg=wrong");
}


%>