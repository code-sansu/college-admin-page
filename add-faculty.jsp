<html>
<head>
    <title>Add Faculty</title>
</head>
<body>
    <h2>Add Faculty</h2>
    
    <!-- The action now matches the Spring MVC route for adding a faculty -->
    <form action="${pageContext.request.contextPath}/faculties" method="post">
        <table>
            <tr>
                <td>Faculty Name:</td>
                <td><input type="text" name="name" required /></td>
            </tr>
            <tr>
                <td>Faculty Email:</td>
                <td><input type="email" name="email" required /></td>
            </tr>
            <tr>
                <td>Department:</td>
                <td>
                    <select name="department">
                        <option value="Computer Science">Computer Science</option>
                        <option value="Information Technology">Information Technology</option>
                        <option value="Electronics">Electronics</option>
                        <!-- Add more departments as needed -->
                    </select>
                </td>
            </tr>
            <tr>
                <td>Joining Date:</td>
                <td><input type="date" name="joiningDate" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Add Faculty" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
