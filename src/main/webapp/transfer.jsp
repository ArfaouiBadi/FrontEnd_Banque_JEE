<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Transfer Money</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<%@ include file="navbar.jsp" %> <!-- navbar.jsp -->
<div class="container">
    <h1 class="mt-5">Transfer Money</h1>
    <form action="transfer" method="post" class="mt-4">
        <div class="form-group">
            <label for="fromAccount">From Account ID</label>
            <input type="text" class="form-control" id="fromAccount" name="fromAccount" required>
        </div>
        <div class="form-group">
            <label for="toAccount">To Account ID</label>
            <input type="text" class="form-control" id="toAccount" name="toAccount" required>
        </div>
        <div class="form-group">
            <label for="amount">Amount</label>
            <input type="number" class="form-control" id="amount" name="amount" required>
        </div>
        <button type="submit" class="btn btn-success mt-3">Transfer</button>
    </form>
</div>

<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
