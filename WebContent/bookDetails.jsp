<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Details</title>
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="css/bookandstudent.css">
</head>

<body>
    <section>
        <div class="container">
            <header>
                <a href="" class="logo">SH Library</a>
                <ul>
                    <li><a href="addBooks.jsp">Add Books</a></li>
                    <li><a href="statistics.jsp">statistics</a></li>
                    <li><a href="addStudent.jsp">Add student</a></li>
                    <li><a href="issueBook.jsp">Issue Book</a></li>
                    <li><a href="returnBook.jsp">Return Book</a></li>
                </ul>
            </header>
            <div class="content">
            <%
   			 			String msg = request.getParameter("msg");
    					if("done".equals(msg))
    					{
    				%>
							<h2 class="msg">Book removed Successfully!</h2>
					<%} %>
					<%
						if("wrong".equals(msg))
						{
					%>
							<h2 class="msg">Some thing went Wrong! Try again!!</h2>
					<%} %>
                    <h2>Book Details</h2>
                    <div class="flex">
                    
                        <table>
                            <thead>
                                <tr>
                                    <th>book_id</th>
                                    <th>b_name</th>
                                    <th>isbn</th>
                                    <th>publisher</th>
                                    <th>edition</th>
                                    <th>price</th>
                                    <th>pages</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                    		try{
                    			Connection con = ConnectionProvider.getCon();
                    			Statement st = con.createStatement();
                    			ResultSet rs = st.executeQuery("select * from book");
                    			while(rs.next())
                    			{
                    		%>
                                <tr>
                                    <td><%=rs.getString(1) %></td>
                                    <td><%=rs.getString(2) %></td>
                                    <td><%=rs.getString(3) %></td>
                                    <td><%=rs.getString(4) %></td>
                                    <td><%=rs.getString(5) %></td>
                                    <td><%=rs.getString(6) %></td>
                                    <td><%=rs.getString(7) %></td>
                                    <td><a href="removeBook.jsp?id=<%=rs.getString(1)%>">Remove</a></td>
                                </tr>
                             <%
                    		}
                    		}
                             catch(Exception e){
                            	 System.out.println(e);
                             }
                             %>
                            </tbody>
                        </table>
                    </div>
                </div>
            <div class="img8x">
                <img src="Images/8.svg" alt="">
            </div>
            <ul class="sci">
                <li><a href="bookDetails.jsp">Book Details</a></li>
                <li><a href="studentDetails.jsp" class="notactive">Student Details</a></li>
                <li><a href="logout.jsp" class="notactive">Logout</a></li>
            </ul>
            <p class="copyrightText">Copyright &copy; 2021 Suleman Hujare. All Right Reserved.</p>
        </div>
    </section>
</body>

</html>