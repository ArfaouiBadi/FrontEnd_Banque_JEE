<%@ page import="Proxy.Compte" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">


<h2>List of Accounts</h2>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Client Name</th>
        <th>Balance</th>
    </tr>
    </thead>
    <tbody>
    <%
        // Get the list of accounts from the request attribute
        List<Compte> accounts = (List<Compte>) request.getAttribute("accounts");

        if (accounts != null) {
            for (Compte account : accounts) {
    %>
    <tr>
        <td><%= account.getId() %></td>
        <td><%= account.getClientName() %></td>
        <td><%= account.getBalance() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3">No accounts found</td>
    </tr>
    <% } %>
    </tbody>
</table>
</div>
</body>
</html>
