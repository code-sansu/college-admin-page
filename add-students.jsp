<html>
<head>
    <title>Add Student</title>
</head>
<body>
<h1>Add Student</h1>
<form action="/students" method="post">
    <label>Name:</label>
    <input type="text" name="name" required>
    <label>Email:</label>
    <input type="email" name="email" required>
    <label>Course:</label>
    <input type="text" name="course" required>
    <button type="submit">Save</button>
</form>
<a href="/students">Back to Student List</a>
</body>
</html>
