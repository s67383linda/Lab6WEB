
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
            <h1>Lab 6-Task 3 - Perform Creating and retrieving records via JSP page</h1> 
            <p>Error when inserting record...!</p>     
            <p><jsp:expression> exception.getMessage()</jsp:expression></p>
            <br>
        </form>
    </body>
</html>
