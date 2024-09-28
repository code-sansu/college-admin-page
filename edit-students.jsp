<html>
<head>
    <title>Edit Student</title>
</head>
<body>
<h1>Edit Student</h1>
<form action="/students/edit/${student.id}" method="post">
    <label>Name:</label>
    <input type="text" name="name" value="${student.name}" required>
    <label>Email:</label>
    <input type="email" name="email" value="${student.email}" required>
    <label>Course:</label>
    <input type="text" name="course" value="${student.course}" required>
    <button type="submit">Update</button>
</form>
<a href="/students">Back to Student List</a>
</body>
</html>
