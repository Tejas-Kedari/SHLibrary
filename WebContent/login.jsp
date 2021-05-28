<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/msg.css">
</head>
<body>
    <section style="flex-direction: column;">
    <%
    String msg = request.getParameter("msg");
    if("notexist".equals(msg))
    {
    %>
			<h2 class="msg">Incorrect Username Or Password!</h2>
	<%} %>
	<%
	if("invalid".equals(msg))
    {
    %>
			<h2 class="msg">Some thing went Wrong! Try Again!!</h2>
	<%} %>
        <div class="container">
            <header>
                <a href="" class="logo">SH Library</a>
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                </ul>
            </header>
            <div class="content">
                <form action="loginAction.jsp" method="post">

                    <h2>Sign In</h2>
                    <p>
                        <div class="section">
                            <input type="text" name="uname" id="uname" placeholder="Username" required>
                        </div>                   
                        <div class="section">
                            <input type="password" name="password" id="password" placeholder="Password" required>
                        </div>                   
                    </p>
                    <button type="submit">Login</button>
                </form>
            </div>
            <div class="img8x">
                <img src="Images/character.svg" alt="">
            </div>
            <ul class="sci">
                <li><a href="signUp.jsp">Sign Up</a></li>
                <li><a href="forgotPassword.jsp">Forgot Password</a></li>
            </ul>
            <p class="copyrightText">Copyright &copy; 2021 Suleman Hujare. All Right Reserved.</p>
        </div>
    </section>
</body>
</html>