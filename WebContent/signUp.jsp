<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/Signup.css">
    <link rel="stylesheet" href="css/msg.css">
</head>
<body>
    <section style="flex-direction: column;">
    <%
    String msg = request.getParameter("msg");
    if("done".equals(msg))
    {
    %>
			<h2 class="msg">Successfully Register!</h2>
	<%} %>
	<%
	if("wrong".equals(msg))
	{
	%>
			<h2 class="msg">Some thing went Wrong! Try again!!</h2>
	<%} %>
        <div class="container">
            <header>
                <a href="" class="logo">SH Library</a>
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                </ul>
            </header>
            <div class="content">
                <form action="signUpAction.jsp" method="post">

                    <h2>Sign Up</h2>
                    <p>
                        <div class="section">
                            <input type="text" name="uname" id="uname" placeholder="Username" required>
                        </div>                   
                        <div class="section">
                            <input type="text" name="email" id="email" placeholder="Email" required>
                        </div>                   
                        <div class="section">
                            <input type="password" name="password" id="password" placeholder="Password" required>
                        </div>                   
                    </p>
                    <button type="submit">Sign Up</button>
                </form>
            </div>
            <div class="img8x">
                <img src="Images/6.svg">
            </div>
            <ul class="sci">
                <li><a href="login.jsp">Sign In</a></li>
                <li><a href="forgotPassword.jsp">Forgot Password</a></li>
            </ul>
            <p class="copyrightText">Copyright &copy; 2021 Suleman Hujare. All Right Reserved.</p>
        </div>
    </section>
</body>
</html>