<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

String b_id = request.getParameter("b_id");
String s_id = request.getParameter("s_id");
String bname = request.getParameter("bname");
String sname = request.getParameter("sname");
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String issueDate = request.getParameter("dateIssue");

//out.println(b_id+" "+s_id+" "+bname+" "+sname+" "+course+" "+branch+" "+issueDate);

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into issuebook values(?, ?, ?, ?, ?, ?, ?)");
	ps.setString(1, b_id);
	ps.setString(2, s_id);
	ps.setString(3, bname);
	ps.setString(4, sname);
	ps.setString(5, course);
	ps.setString(6, branch);
	ps.setString(7, issueDate);
	ps.executeUpdate();
	response.sendRedirect("issueBook.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
}

%>