<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Return Book</title>
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="css/ReturnBook.css">
    
    <%
    try{
    	int cb = 0;
    	String b_id = request.getParameter("forb_id");
    	String s_id = request.getParameter("fors_id");
    
    	if(b_id == ""){
    		response.sendRedirect("returnBook.jsp?msg=nobook");
    	}
    	if(s_id == ""){
    		response.sendRedirect("returnBook.jsp?msg=nostud");
    	}
    	
    	try{
    		Connection concb = ConnectionProvider.getCon();
    		Statement stcb = concb.createStatement();
    		ResultSet rscb = stcb.executeQuery("select * from issuebook where book_id= '"+b_id+"' and student_id='"+s_id+"'");
    		while(rscb.next()){
    			cb = 1;
    		}
    		
    		
    	}catch(Exception e){
    		System.out.println(e);
    	}
    	
    	if(cb == 0)
    		response.sendRedirect("returnBook.jsp?msg=notexist");
    }
    catch(Exception e){
		System.out.println(e);
    }
    %>
    
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
                    <li><a href="returnBook.jsp" class="active">Return Book</a></li>
                </ul>
            </header>
            <div class="content">
                <form action="returnBookAction.jsp" method="post">

                    <h2>Return Books</h2>
                    <div class="flex">
                    <%
                    try{
                    	String s_id = request.getParameter("fors_id");
                    	String b_id = request.getParameter("forb_id");
                    	
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("select * from issuebook where student_id='"+s_id+"' and book_id='"+b_id+"'");
                    	while(rs.next())
                    	{
                    %>
                        <div class="first">
                            <div class="section">
                                <input type="text" name="b_id" id="b_id" placeholder="Book Id" value="<%=rs.getString(1) %>" required>
                            </div>
                            <div class="section">
                                <input type="text" name="bname" id="bname" placeholder="Book Name" value="<%=rs.getString(3) %>">
                            </div>
                            <div class="section">
                                <input type="text" name="course" id="course" placeholder="Course" value="<%=rs.getString(5) %>">
                            </div>
                            <div class="section">
                                <input type="text" name="dateIssue" id="dateIssue" placeholder="Date Of Issue" value="<%=rs.getString(7) %>">
                            </div>
                            <div class="section">
                                <label for="dateReturn">Date Of Return</label>
                            </div>
                        </div>
                        <div class="second">
                            <div class="section">
                                <div style="height: 100%; width: 100%; display: grid; grid-template-columns: 85% 15%;"><input type="text" name="s_id" id="s_id" placeholder="Student Id" value="<%=rs.getString(2) %>" required><button class="butsearch" type="submit" style="margin: 0; padding: 0; height: 100%; width: 100%;" onclick="clicking()"><i class="las la-search"></i></button></div>
                            </div>
                            <div class="section">
                                <input type="text" name="sname" id="sname" placeholder="Student Name" value="<%=rs.getString(4) %>">
                            </div>
                            <div class="section">
                                <input type="text" name="branch" id="branch" placeholder="Branch" value="<%=rs.getString(6) %>">
                            </div>
                            <div class="section" style="opacity: 0;">
                                <span>&nbsp;</span>
                            </div>
                            <%
                    	}	
                    }
                    catch(Exception e){
                    	
                    }
                            %>
                            <div class="section">
                                <input type="date" name="dateReturn" id="dateReturn" required>
                            </div>
                        </div>
                    </div>
                    <button type="submit">Return Book</button>
                </form>
            </div>
            <div class="img8x">
                <img src="Images/5.svg" alt="">
            </div>
            <ul class="sci">
                <li><a href="bookDetails.jsp" class="notactive">Book Details</a></li>
                <li><a href="studentDetails.jsp" class="notactive">Student Details</a></li>
                <li><a href="logout.jsp" class="notactive">Logout</a></li>
            </ul>
            <p class="copyrightText">Copyright &copy; 2021 Suleman Hujare. All Right Reserved.</p>
        </div>
    </section>
</body>

</html>