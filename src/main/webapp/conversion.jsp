<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Currency Conversion</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1 class="mt-5">Currency Conversion</h1>

    <form action="convert" method="post" class="mt-4">
        <div class="form-group">
            <label for="amount">Amount</label>
            <input type="number" step="0.01" class="form-control" id="amount" name="amount" required>
        </div>
        <div class="form-group mt-3">
            <label for="fromCurrency">From Currency</label>
            <select class="form-control" id="fromCurrency" name="fromCurrency" required>
                <option value="USD">USD</option>
                <option value="EUR">EUR</option>
                <option value="GBP">GBP</option>
                <option value="TND">TND</option>
            </select>
        </div>
        <div class="form-group mt-3">
            <label for="toCurrency">To Currency</label>
            <select class="form-control" id="toCurrency" name="toCurrency" required>
                <option value="USD">USD</option>
                <option value="EUR">EUR</option>
                <option value="GBP">GBP</option>
                <option value="TND">TND</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Convert</button>
    </form>

    <div class="mt-5">
        <% if (request.getAttribute("convertedAmount") != null) { %>
        <h3>Converted Amount:</h3>
        <p><%= request.getAttribute("amount") %> <%= request.getAttribute("fromCurrency") %> equals <strong><%= request.getAttribute("convertedAmount") %> <%= request.getAttribute("toCurrency") %></strong></p>
        <% } else if (request.getAttribute("error") != null) { %>
        <div class="alert alert-danger"><%= request.getAttribute("error") %></div>
        <% } %>
    </div>
</div>

<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
