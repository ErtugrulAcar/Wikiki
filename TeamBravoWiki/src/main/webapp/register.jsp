<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<style>
</style>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body style="margin-top: 5%">
	<center>
	    <div class="w-25">
	        <h2><img src="img/wiki2logo.png" class="w-50"></h2>
	            <div class="nav border d-flex justify-content-center py-4 mt-1">
	                <div class = "d-block w-75">
	                    <form action="/register" method="post">
	                    	<span style="font-family: 'Comic Sans MS'; font-size: medium;" pattern=".{2,}" required title="2 characters minimum">Name</span>
	                        <input id="username" type="text" name="name" style="width:100%;" class="my-2" placeholder="Name" autofocus>
	                        <span style="font-family: 'Comic Sans MS'; font-size: medium;" pattern=".{2,}" required title="2 characters minimum">Last Name</span>
	                        <input id="userlastname" type="text" name="surname" style="width:100%;" class="my-2" placeholder="Last Name">
	                        <span style="font-family: 'Comic Sans MS'; font-size: medium;" maxlegth="10">Phone Number</span>
	                        <input id="phone_number" type="text" name="phone" style="width:100%;" class="my-2" placeholder="5xxxxxxxx" pattern="[0-9]{10}" title="Please write right format">
	                        <span style="font-family: 'Comic Sans MS'; font-size: medium;">E-Mail</span>
	                        <input id="email" type="text" name="email" style="width:100%;" class="my-2" placeholder="example@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please include an '@' in the email address.'email_address' is missing an '@'." required>
	                        <span style="font-family: 'Comic Sans MS'; font-size: medium;">Password</span><br>
	                        <input id="password" type="password" name="password" style="width:100%;" class="my-2" placeholder="Password" required>
	                        <br>
	                        <input id="submit" type="submit" value="Register" class="my-2 btn btn-secondary mt-4" style="width:100px;">
	                    </form>
	                    <a href="/login"><button class="my-2 btn btn-secondary" style="width:100px;">Login</button></a>
	                </div>
	                <div class = "d-block mb-3">
	                        <a href="/home" style = "color:black;"><br>To Continue without sign in...</a>
	                </div>
	            </div>
	    </div>
	</center>
	<footer class="footer">
	            <div class="copyright-section">
	                <div class="container-fluid fixed-bottom text-center mb-2">
	                    <div class="row">
	                        <div class="col-md-12">
	                            <div class="copytext">
	                                &copy; GROUP BRAVO. All rights reserved | Design By: GROUP BRAVO MEMBERS
	                            </div>
	                        </div>
	                    </div>
	                    <!--.row-->
	                </div>
	                <!-- .container-fluid -->
	            </div>
	            <!-- .copyright-section -->
	</footer>
</body>
</html>