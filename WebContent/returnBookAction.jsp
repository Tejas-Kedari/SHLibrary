<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%
String b_id = request.getParameter("b_id");
String s_id = request.getParameter("s_id");
String bname = request.getParameter("bname");
String sname = request.getParameter("sname");
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String dateIssue = request.getParameter("dateIssue");
String dateReturn = request.getParameter("dateReturn");

//out.println(b_id+" "+s_id+" "+bname+" "+sname+" "+course+" "+branch+" "+dateIssue+" "+dateReturn);
try{
	Connection con1 = ConnectionProvider.getCon();
	PreparedStatement ps1 = con1.prepareStatement("delete from issuebook where book_id=? and student_id=?");
	ps1.setString(1, b_id);
	ps1.setString(2, s_id);
	ps1.executeUpdate();
}
catch(Exception e){
	System.out.println(e);
}

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into returnbook values (?, ?, ?, ?, ?, ?, ?, ?)");
	ps.setString(1, b_id);
	ps.setString(2, s_id);
	ps.setString(3, bname);
	ps.setString(4, sname);
	ps.setString(5, course);
	ps.setString(6, branch);
	ps.setString(7, dateIssue);
	ps.setString(8, dateReturn);
	ps.executeUpdate();
	response.sendRedirect("returnBook.jsp?msg=done");
}
catch(Exception e){
	
}
%>
