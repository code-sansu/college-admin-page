<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Faculties</title>
</head>
<body>
<h1>Faculty List</h1>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="faculty" items="${faculties}">
            <tr>
                <td>${faculty.name}</td>
                <td>${faculty.email}</td>
                <td>${faculty.department}</td>
                <td>
                    <form action="/faculties/delete/${faculty.id}" method="post">
                        <button type="submit">Delete</button>
                    </form>
                    <a href="/faculties/edit/${faculty.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/faculties/add">Add Faculty</a>
</body>
</html>
