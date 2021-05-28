<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Books</title>

    <link rel="stylesheet" href="css/addBooks.css">
    <link rel="stylesheet" href="css/msg.css">
</head>
<body>
    <section>
    
        <div class="container">
            <header>
                <a href="" class="logo">SH Library</a>
                <ul>
                    <li><a href="addBooks.jsp" class="active">Add Books</a></li>
                    <li><a href="statistics.jsp">statistics</a></li>
                    <li><a href="addStudent.jsp">Add student</a></li>
                    <li><a href="issueBook.jsp">Issue Book</a></li>
                    <li><a href="returnBook.jsp">Return Book</a></li>
                </ul>
            </header>
            <div class="content">
                <form action="addBooksAction.jsp" method="post">
					<%
   			 			String msg = request.getParameter("msg");
    					if("done".equals(msg))
    					{
    				%>
							<h2 class="msg">Book added Successfully!</h2>
					<%} %>
					<%
						if("wrong".equals(msg))
						{
					%>
							<h2 class="msg">Some thing went Wrong! Try again!!</h2>
					<%} %>
                    <h2>Add Books</h2>
                    <div class="flex">
                        <div class="first">
                            <div class="section">
                                <input type="text" name="b_id" id="b_id" placeholder="Book Id" required>
                            </div>                   
                            <div class="section">
                                <input type="text" name="name" id="name" placeholder="Book Name" required>
                            </div>                   
                            <div class="section">
                                <input type="text" name="isbn" id="isbn" placeholder="ISBN" required>
                            </div>                   
                            <div class="section">
                                <input type="text" name="publisher" id="publisher" placeholder="Publisher" required>
                            </div>                   
                        </div>
                        <div class="second">
                            <div class="section">
                                <select name="edition" id="edition" required>
                                    <option disabled selected>Edition</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                </select>
                            </div>                   
                            <div class="section">
                                <input type="text" name="price" id="price" placeholder="Price" required>
                            </div>                   
                            <div class="section">
                                <input type="text" name="pages" id="pages" placeholder="Pages" required>
                            </div>                   
                        </div>
                    </div>
                    <button type="submit">Add Book</button>
                </form>
            </div>
            <div class="img8x">
                <img src="Images/1.svg" alt="">
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