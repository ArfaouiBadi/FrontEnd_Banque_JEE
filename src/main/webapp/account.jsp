<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Open Account</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1 class="mt-5">Open a New Account</h1>
    <form action="account" method="post" class="mt-4">
        <div class="form-group">
            <label for="clientName">Client Name</label>
            <input type="text" class="form-control" id="clientName" name="clientName" required>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Open Account</button>
        <button type="button" class="button btn btn-warning mt-3" onclick="window.location.href='index.jsp'">Back</button>
        <button type="button" class="button btn btn-secondary mt-3" onclick="window.location.href='listAccounts.jsp'">Lister All Accounts</button>

    </form>
</div>

<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
