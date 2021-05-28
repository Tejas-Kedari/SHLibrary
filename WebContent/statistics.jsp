<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Return Book</title>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="css/statistics.css">
</head>
<body>
    <section>
        <div class="container">
            <header>
                <a href="" class="logo">SH Library</a>
                <ul>
                    <li><a href="addBooks.jsp">Add Books</a></li>
                    <li><a href="statistics.jsp" class="active">statistics</a></li>
                    <li><a href="addStudent.jsp">Add student</a></li>
                    <li><a href="issueBook.jsp">Issue Book</a></li>
                    <li><a href="returnBook.jsp">Return Book</a></li>
                </ul>
            </header>
            <div class="content">
                <h2>Statistics</h2>
                <div class="flex" style="display: grid; grid-template-columns: 47% 53%">
                    <div class="first">
                        <table>
                            <caption>Issue Books</caption>
                            <thead>
                                <tr>
                                    <th>book_id</th>
                                    <th>stud_id</th>
                                    <th>b_name</th>
                                    <th>s_name</th>
                                    <th>course</th>
                                    <th>branch</th>
                                    <th>DOI</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            try{
                            	Connection con1 = ConnectionProvider.getCon();
                            	Statement st1 = con1.createStatement();
                            	ResultSet rs1 = st1.executeQuery("select * from issuebook");
                            	while(rs1.next())
                            	{
                            %>
                                <tr>
                                    <td><%=rs1.getString(1) %></td>
                                    <td><%=rs1.getString(2) %></td>
                                    <td><%=rs1.getString(3) %></td>
                                    <td><%=rs1.getString(4) %></td>
                                    <td><%=rs1.getString(5) %></td>
                                    <td><%=rs1.getString(6) %></td>
                                    <td><%=rs1.getString(7) %></td>
                                </tr>   
                            <%
                            }
                            }
                            catch(Exception e){
                            	
                            }
                            %>
                            </tbody>
                        </table>                        
                    </div>
                    <div class="second">
                        <table>
                            <caption>Return Books</caption>
                            <thead>
                                <tr>
                                    <th>book_id</th>
                                    <th>stud_id</th>
                                    <th>b_name</th>
                                    <th>s_name</th>
                                    <th>course</th>
                                    <th>branch</th>
                                    <th>DOI</th>
                                    <th>DOR</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            try{
                            	Connection con2 = ConnectionProvider.getCon();
                            	Statement st2 = con2.createStatement();
                            	ResultSet rs2 = st2.executeQuery("select * from returnbook");
                            	while(rs2.next())
                            	{
                            
                            %>
                                <tr>
                                    <td><%=rs2.getString(1) %></td>
                                    <td><%=rs2.getString(2) %></td>
                                    <td><%=rs2.getString(3) %></td>
                                    <td><%=rs2.getString(4) %></td>
                                    <td><%=rs2.getString(5) %></td>
                                    <td><%=rs2.getString(6) %></td>
                                    <td><%=rs2.getString(7) %></td>
                                    <td><%=rs2.getString(8) %></td>
                                </tr>
                                <%
                            }}
                            catch(Exception e){
                            	System.out.println(e);
                            }
                                %>
                            </tbody>
                        </table>                  
                    </div>
                </div>
            </div>
            <p class="copyrightText">Copyright &copy; 2021 Suleman Hujare. All Right Reserved.</p>
        </div>
    </section>
</body>
</html>