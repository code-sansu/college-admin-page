<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admins List</title>
</head>
<body>
    <h2>Admins</h2>
    <a href="/admins/add">Add New Admin</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="admin" items="${admins}">
            <tr>
                <td>${admin.id}</td>
                <td>${admin.name}</td>
                <td>${admin.email}</td>
                <td>
                    <a href="/admins/edit/${admin.id}">Edit</a>
                    <form action="/admins/delete/${admin.id}" method="post" style="display:inline;">
                        <input type="submit" value="Delete"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
