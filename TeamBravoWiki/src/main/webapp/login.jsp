<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<style>
</style>
<body style="margin-top: 5%">
		<center>
		    <div class="w-25">
		        <h2><img src="img/wiki2logo.png" class="w-50"></h2>
		            <div class="nav border d-flex justify-content-center py-4 mt-1">
		                <div class = "d-block w-75">
		                    <form action="/authentication" method="post">
		                        <span style="font-family: 'Comic Sans MS'; font-size: medium;">E-Mail</span>
		                        <input type="text" name="email" style="width:100%;" class="my-2" autofocus>
		                        <span style="font-family: 'Comic Sans MS'; font-size: medium;">Password</span><br>
		                        <input type="password" name="password" style="width:100%;" class="my-2">
		                        <br>
		                        <input type="submit" value="Login" class="my-2 btn btn-secondary mt-4" style="width:100px;">
		                    </form>
		                     <a href="/register"><button class="my-2 btn btn-secondary" style="width:100px;">Register</button></a>
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