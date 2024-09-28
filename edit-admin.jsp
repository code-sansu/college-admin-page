<html>
<head>
    <title>Edit Admin</title>
</head>
<body>
    <h2>Edit Admin</h2>
    
    <form action="${pageContext.request.contextPath}/admins/edit/${admin.id}" method="post">
        <table>
            <tr>
                <td>Admin Name:</td>
                <td><input type="text" name="name" value="${admin.name}" required /></td>
            </tr>
            <tr>
                <td>Admin Email:</td>
                <td><input type="email" name="email" value="${admin.email}" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Update Admin" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
