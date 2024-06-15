<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>
        <fieldset>
            <legend>Author Registration</legend>
            <form action="processAuthor.jsp">
                <table>
                    <tr>
                        <td><label for="authno">Label</label></td>
                        <td><input type="text" name="authno" placeholder="E.g. UKXXXXX"></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" name="name" placeholder="Enter your name"></td>
                    </tr>
                    <tr>
                        <td><label for="address">Address</label></td>
                        <td><input type="text" name="address" placeholder="Enter your address"></td>
                    </tr>
                    <tr>
                        <td><label for="city">City</label></td>
                        <td><input type="text" name="city" placeholder="Enter your city"></td>
                    </tr>
                    <tr>
                        <td><label for="state">State</label></td>
                        <td><input type="text" name="state" placeholder="Enter your state"></td>
                    </tr>
                    <tr>
                        <td><label for="zip">Zip</label></td>
                        <td><input type="text" name="zip" placeholder="Enter your zip"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="Submit"><input type="reset" name="Cancel"> </td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </body>
</html
