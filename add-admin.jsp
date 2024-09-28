<html>
<head>
    <title>Add Admin</title>
</head>
<body>
    <h2>Add Admin</h2>
    
    <form action="${pageContext.request.contextPath}/admins" method="post">
        <table>
            <tr>
                <td>Admin Name:</td>
                <td><input type="text" name="name" required /></td>
            </tr>
            <tr>
                <td>Admin Email:</td>
                <td><input type="email" name="email" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Add Admin" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
