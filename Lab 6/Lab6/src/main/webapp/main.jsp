<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Page</title>
    </head>
    <body>
        <h2>Welcome, <%= session.getAttribute("firstname")%> <%= session.getAttribute("lastname")%></h2>
        <p>Your username is: <%= session.getAttribute("username")%></p>
    </body>
</html>
