<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Lab6.com.Database" %>
<%@page import="Lab6.com.Marathon" %>
<%@page import="Lab6.com.MarathonDAO" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab6 - Task 5</title>
        <style>
            p{
                color: red
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="myMarathon" class="Lab6.com.Marathon" scope="request"/>
        <jsp:setProperty name="myMarathon" property="*"/>
        <%
            int result;
            Database myDB = new Database();
            MarathonDAO object1 = new MarathonDAO();
            result = object1.addDetails(myMarathon);

            if (result > 0) {
                out.println("\tRecord successfully added into marathon table...!");
                out.print("<p>" + "Record with IC No " + myMarathon.getIcno()
                        + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are: " + "</p>");
                out.print("<p>IC No : " + myMarathon.getIcno() + "</p>");
                out.print("<p>Name : " + myMarathon.getName() + "</p>");
                out.print("<p>Category : " + myMarathon.getCategory() + "</p>");
            }
            myDB.closeConnection();
        %>
    </body>
</html>
