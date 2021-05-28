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
</head>

<body>
<form action="returnBookSearch.jsp" method="post" style="display: none;">
<input type="text" name="forb_id" id="forb_id">
<input type="text" name="fors_id" id="fors_id">
<button type="submit" id="sub"></button>
</form>
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
                <form action="studentDetails.html" method="post">
					<%
   			 			String msg = request.getParameter("msg");
    					if("done".equals(msg))
    					{
    				%>
							<h2 class="msg">Book return Successfully!</h2>
					<%} %>
					<%
						if("nobook".equals(msg))
						{
					%>
							<h2 class="msg">Enter book id!!</h2>
					<%} %>
					<%
						if("nostud".equals(msg))
						{
					%>
							<h2 class="msg">Enter student id!!!</h2>
					<%} %>
					<%
						if("notexist".equals(msg))
						{
					%>
							<h2 class="msg">Invalid book_id or student_id</h2>
					<%} %>
					<%
						if("wrong".equals(msg))
						{
					%>
							<h2 class="msg">Some thing went Wrong! Try again!!</h2>
					<%} %>
                    <h2>Return Books</h2>
                    <div class="flex">
                        <div class="first">
                            <div class="section">
                                <input type="text" name="b_id" id="b_id" placeholder="Book Id" required>
                            </div>
                            <div class="section">
                                <input type="text" name="bname" id="bname" placeholder="Book Name" disabled>
                            </div>
                            <div class="section">
                                <input type="text" name="course" id="course" placeholder="Course" disabled>
                            </div>
                            <div class="section">
                                <input type="text" name="dateIssue" id="dateIssue" placeholder="Date Of Issue" disabled>
                            </div>
                            <div class="section">
                                <label for="dateReturn">Date Of Return</label>
                            </div>
                        </div>
                        <div class="second">
                            <div class="section">
                                <div style="height: 100%; width: 100%; display: grid; grid-template-columns: 85% 15%;"><input type="text" name="s_id" id="s_id" placeholder="Student Id" required><button class="butsearch" type="submit" style="margin: 0; padding: 0; height: 100%; width: 100%;" onclick="clicking()"><i class="las la-search"></i></button></div>
                            </div>
                            <div class="section">
                                <input type="text" name="sname" id="sname" placeholder="Student Name" disabled>
                            </div>
                            <div class="section">
                                <input type="text" name="branch" id="branch" placeholder="Branch" disabled>
                            </div>
                            <div class="section" style="opacity: 0;">
                                <span>&nbsp;</span>
                            </div>
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
<script>
function clicking(){
	document.getElementById('forb_id').value = document.getElementById('b_id').value;
	document.getElementById('fors_id').value = document.getElementById('s_id').value;
	document.getElementById('sub').click();
}
</script>

</html>