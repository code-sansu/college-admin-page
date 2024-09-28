<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Students</title>
</head>
<body>
<h1>Student List</h1>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Course</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.course}</td>
                <td>
                    <form action="/students/delete/${student.id}" method="post">
                        <button type="submit">Delete</button>
                    </form>
                    <a href="/students/edit/${student.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/students/add">Add Student</a>
</body>
</html>
