<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab6 - Task 5</title>
    </head>
    <body>
        <fieldset>
            <legend>
                Marathon Registration
            </legend>
            <form action="processMarathon.jsp">
                <table>
                    <tr>
                        <td>IC No</td>
                        <td>
                            <input type="text" placeholder="E.g: 991110-10-2514" name="icno">
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <input type="text" placeholder="Enter your name" name="name">
                        </td>
                    </tr>
                    <tr>
                        <td>Category</td>
                        <td>
                            <select name="category">
                                <option value="5 KM">5 KM</option>
                                <option value="7 KM">7 KM</option>
                                <option value="10 KM">10 KM</option>
                            </select>
                        </td>
                    </tr>
                </table>

                <input type="submit" value="Submit"><input type="reset" value="Cancel">
            </form>
        </fieldset>
        <p>&copy2021-Linda</p>
    </body>
</html>
