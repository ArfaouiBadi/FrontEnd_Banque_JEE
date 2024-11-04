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
<%@ include file="navbar.jsp" %>
<div class="container">
<h2>Withdraw Money</h2>
<form action="withdraw" method="POST">

    <div class="form-group">
        <label for="amount">Account ID:</label>
        <input type="number" class="form-control" id="accountId" name="accountId" step="1" required>
    </div>
    <div class="form-group">
        <label for="amount">Amount to Withdraw:</label>
        <input type="number" class="form-control" id="amount" name="amount" step="1" required>
    </div>
    <input type="submit" value="Withdraw" class="btn btn-success mt-3">
</form>
</div>
</html>