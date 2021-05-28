<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	// All Tables Come Here.
	String q1 = "create table account(username varchar(20), email varchar(40), password varchar(20))";
	String q2 = "create table book(book_id varchar(10), name varchar(40), isbn varchar(20), publisher varchar(30), edition varchar(10), price varchar(10), pages varchar(10))";
	String q3 = "create table issuebook(book_id varchar(10), student_id varchar(10), bname varchar(40), sname varchar(40), course varchar(20), branch varchar(10), dateOfIssue varchar(30))";
	String q4 = "create table returnbook(book_id varchar(10), student_id varchar(10), bname varchar(40), sname varchar(40), course varchar(20), branch varchar(10), dateOfIssue varchar(30), dateOfReturn varchar(30))";
	String q5 = "create table student(student_id varchar(10), name varchar(25), father varchar(25), course varchar(10), branch varchar(10), year varchar(10), semester varchar(10))";
	
	
	//Executing the tables query.
	System.out.print(q1);
	System.out.print(q2);
	System.out.print(q3);
	System.out.print(q4);
	System.out.print(q5);
	st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	//st.execute(q4);
	//st.execute(q5);
	
	System.out.print("Tables Created");
	con.close();
}
catch(Exception e){
	System.out.print(e);
}
%>