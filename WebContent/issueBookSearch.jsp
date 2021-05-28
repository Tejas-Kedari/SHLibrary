<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Book</title>

    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

    <link rel="stylesheet" href="css/issueBook.css">
    <%
    try{
    	int cb = 0;
    	int cs = 0;
    	String b_id = request.getParameter("forb_id");
    	String s_id = request.getParameter("fors_id");
    
    	if(b_id == ""){
    		response.sendRedirect("issueBook.jsp?msg=nobook");
    	}
    	if(s_id == ""){
    		response.sendRedirect("issueBook.jsp?msg=nostud");
    	}
    	
    	try{
    		Connection concb = ConnectionProvider.getCon();
    		Statement stcb = concb.createStatement();
    		ResultSet rscb = stcb.executeQuery("select * from book where book_id= '"+b_id+"'");
    		while(rscb.next()){
    			cb = 1;
    		}
    		
    		
    	}catch(Exception e){
    		System.out.println(e);
    	}
    	
    	try{
			Connection concs = ConnectionProvider.getCon();
			Statement stcs = concs.createStatement();
			ResultSet rscs = stcs.executeQuery("select * from student where student_id = '"+s_id+"'");
			while(rscs.next()){
				cs = 1;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
    	
    	
    	if(cs == 0 || cb == 0)
    		response.sendRedirect("issueBook.jsp?msg=notexist");
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
                    <li><a href="issueBook.jsp" class="active">Issue Book</a></li>
                    <li><a href="returnBook.jsp">Return Book</a></li>
                </ul>
            </header>
            <div class="content">
					<form action="issueBookAction.jsp" method="post">
                    <h2>Issue Book</h2>
                    <div class="flex">
                    
                        <div class="first">
                        <%
                        try{
                        	String b_id = request.getParameter("forb_id");
                        	Connection conb = ConnectionProvider.getCon();
                        	Statement stb = conb.createStatement();
                        	ResultSet rsb = stb.executeQuery("select * from book where book_id = '"+b_id+"'");
                        	while(rsb.next())
                        	{
                        %>
                            <div class="section search">
                                <input type="text" name="b_id" id="b_id" placeholder="Book Id" value="<%=rsb.getString(1) %>" required><button class="butsearch" type="submit" style="margin: 0; padding: 0; height: 100%; width: 100%; display: none;" onclick="clicking()"><i class="las la-search" ></i></button>
                            </div>                   
                            <div class="section">
                                <input type="text" name="bname" id="bname" placeholder="Book Name" value="<%=rsb.getString(2) %>">
                            </div>                   
                            <div class="section">
                                <input type="text" name="isbn" id="isbn" placeholder="ISBN" value="<%=rsb.getString(3) %>" disabled>
                            </div>                   
                            <div class="section">
                                <input type="text" name="publisher" id="publisher" placeholder="Publisher" value="<%=rsb.getString(4) %>" disabled>
                            </div>                   
                            <div class="section">
                                <input type="text" name="edition" id="edition" placeholder="Edition"value="<%=rsb.getString(5) %>" disabled>
                            </div>                   
                            <div class="section">
                                <input type="text" name="price" id="price" placeholder="Price" value="<%=rsb.getString(6) %>" disabled>
                            </div>                   
                            <div class="section">
                                <input type="text" name="pages" id="pages" placeholder="Pages" value="<%=rsb.getString(7) %>" disabled>
                            </div>
                            <%
                        	}}
                        catch(Exception e){
                        	System.out.println(e);
                        }
                            %>
                            <div class="section">
                                <label for="dateIssue">Date Of Issue</label>                   
                            </div>
                            
                        </div>
                        <div class="second">
                        <%
                        try{
                        	String s_id = request.getParameter("fors_id");
                        	Connection cons = ConnectionProvider.getCon();
                        	Statement sts = cons.createStatement();
                        	ResultSet rss = sts.executeQuery("select * from student where student_id = '"+s_id+"'");
                        	while(rss.next())
                        	{
                        %>               
                            <div class="section">
                                <div style="height: 100%; width: 100%; display: grid; grid-template-columns: 85% 15%;"><input type="text" name="s_id" id="s_id" placeholder="Student Id" value="<%=rss.getString(1) %>" required><button class="butsearch" type="submit" style="margin: 0; padding: 0; height: 100%; width: 100%; display: none;" onclick="clicking()"><i class="las la-search"></i></button></div>
                            </div>                   
                            <div class="section">
                                <input type="text" name="sname" id="sname" placeholder="Student Name" value="<%=rss.getString(2) %>">
                            </div>                   
                            <div class="section">
                                <input type="text" name="fname" id="fname" placeholder="Father's Name" value="<%=rss.getString(3) %>" disabled>
                            </div>                   
                            <div class="section">
                                <input type="text" name="course" id="course" placeholder="Course" value="<%=rss.getString(4) %>">
                            </div>                   
                            <div class="section">
                                <input type="text" name="branch" id="branch" placeholder="Branch" value="<%=rss.getString(5) %>">
                            </div>                   
                            <div class="section">
                                <input type="text" name="year" id="year" placeholder="Year" value="<%=rss.getString(6) %>" disabled>
                            </div>                   
                            <div class="section">
                                <input type="text" name="semester" id="semester" placeholder="Semester" value="<%=rss.getString(7) %>" disabled>
                            </div>
                         <%
                        	}}
                        catch(Exception e){
                        	System.out.println(e);
                        }
                            %> 
                            <div class="section">
                                <input type="date" name="dateIssue" id="dateIssue" required>
                            </div>
                 
                        </div>
                    </div>
                    <button type="submit">Issue Book</button>
                    </form>
            </div>
            <div class="img8x">
                <img src="Images/4.svg" alt="">
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