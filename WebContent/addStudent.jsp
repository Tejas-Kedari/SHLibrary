<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>

    <link rel="stylesheet" href="css/addStudent.css">
    <link rel="stylesheet" href="css/msg.css">
</head>
<body>
    <section>
        <div class="container">
            <header>
                <a href="" class="logo">SH Library</a>
                <ul>
                    <li><a href="addBooks.jsp">Add Books</a></li>
                    <li><a href="statistics.jsp">statistics</a></li>
                    <li><a href="addStudent.jsp" class="active">Add student</a></li>
                    <li><a href="issueBook.jsp">Issue Book</a></li>
                    <li><a href="returnBook.jsp">Return Book</a></li>
                </ul>
            </header>
            <div class="content">
                <form action="addStudentAction.jsp" method="post">
					<%
   			 			String msg = request.getParameter("msg");
    					if("done".equals(msg))
    					{
    				%>
							<h2 class="msg">Student added Successfully!</h2>
					<%} %>
					<%
						if("wrong".equals(msg))
						{
					%>
							<h2 class="msg">Some thing went Wrong! Try again!!</h2>
					<%} %>
                    <h2>Add Student</h2>
                    <div class="flex">
                        <div class="first">
                            <div class="section">
                                <input type="text" name="s_id" id="s_id" placeholder="Student Id" required>
                            </div>                   
                            <div class="section">
                                <input type="text" name="name" id="name" placeholder="Student Name" required>
                            </div>                   
                            <div class="section">
                                <input type="text" name="fname" id="fname" placeholder="Father's Name" required>
                            </div>                   
                            <div class="section">
                                <select name="course" id="course" required>
                                    <option disabled selected>Course</option>
                                    <option value="B.E">B.E</option>
                                    <option value="B.Tech">B.Tech</option>
                                    <option value="M.Tech">M.Tech</option>
                                    <option value="MBA">MBA</option>
                                    <option value="BBA">BBA</option>
                                    <option value="BCA">BCA</option>
                                    <option value="B.Sc">B.Sc</option>
                                    <option value="M.Sc">M.Sc</option>
                                </select>
                            </div>                   
                        </div>
                        <div class="second">
                            <div class="section">
                                <select name="branch" id="branch" required>
                                    <option disabled selected>Branch</option>
                                    <option value="Machanical">Machanical</option>
                                    <option value="CSE">CSE</option>
                                    <option value="IT">IT</option>
                                    <option value="Civil">Civil</option>
                                    <option value="Automobile">Automobile</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>                   
                            <div class="section">
                                <select name="year" id="year" required>
                                    <option disabled selected>Year</option>
                                    <option value="First">First</option>
                                    <option value="Second">Second</option>
                                    <option value="Third">Third</option>
                                    <option value="Fourth">Fourth</option>
                                </select>
                            </div>                   
                            <div class="section">
                                <select name="semester" id="semester" required>
                                    <option disabled selected>Semester</option>
                                    <option value="1st">1st</option>
                                    <option value="2nd">2nd</option>
                                    <option value="3rd">3rd</option>
                                    <option value="4th">4th</option>
                                    <option value="5th">5th</option>
                                    <option value="6th">6th</option>
                                    <option value="7th">7th</option>
                                    <option value="8th">8th</option>
                                </select>
                            </div>                   
                        </div>
                    </div>
                    <button type="submit">Add Student</button>
                </form>
            </div>
            <div class="img8x">
                <img src="Images/2.svg" alt="">
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