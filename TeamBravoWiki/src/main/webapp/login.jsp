<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>

</style>
<body>


<center>
    <h2>Wiki Login</h2>
    <form action="/authentication" method="post">
        E-mail <br>
        <input type="text" name="email">
        <br>
        Password: <br>
        <input type="password" name="password">
        <br><br>
        <input type="submit" value="Submit">
    </form>
    <form>
        <a href="homepage.jsp">To Continue without sign in...</a>
    </form>
</center>


</body>
</html>