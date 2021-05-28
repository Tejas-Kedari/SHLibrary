<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<%
String b_id = request.getParameter("b_id");
String bname = request.getParameter("name");
String isbn = request.getParameter("isbn");
String publisher = request.getParameter("publisher");
String edition = request.getParameter("edition");
String price = request.getParameter("price");
String pages = request.getParameter("pages");

//out.print(b_id+" "+bname+" "+isbn+" "+publisher+" "+edition+" "+price+" "+pages);


try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into book values(?, ?, ?, ?, ?, ?, ?)");
	ps.setString(1, b_id);
	ps.setString(2, bname);
	ps.setString(3, isbn);
	ps.setString(4, publisher);
	ps.setString(5, edition);
	ps.setString(6, price);
	ps.setString(7, pages);
	ps.executeUpdate();
	response.sendRedirect("addBooks.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addBooks.jsp?msg=wrong");
}

%>