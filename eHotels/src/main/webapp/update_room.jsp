<%--
  Created by IntelliJ IDEA.
  User: FADED THAN A HOE RN
  Date: 2024-03-25
  Time: 7:24 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Update Room Information</h2>
<form action="update_room.php" method="POST">
    <label for="roomNumber">Select Room:</label><br>
    <select id="roomNumber" name="roomNumber" required>
    </select><br><br>
<div class="search-container">
    <div class="row">
        <div class="col-md-3">
            <label for="capacity">Room Capacity:</label>
            <input type="number" id="capacity" class="form-control" min="1">
        </div>
        <div class="col-md-3">
            <label for="area">Area:</label>
            <input type="text" id="area" class="form-control">
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <label for="chain">Hotel Chain:</label>
            <select id="chain" class="form-control">
                <option value="marriott">Marriott</option>
                <option value="hilton">Hilton</option>
                <option value="hyatt">Hyatt</option>
            </select>
        </div>
        <div class="col-md-3">
            <label for="category">Hotel Category:</label>
            <select id="category" class="form-control">
                <option value="luxury">Luxury</option>
                <option value="budget">Budget</option>
                <option value="boutique">Boutique</option>
            </select>
        </div>
        <div class="col-md-3">
            <label for="roomPrice">New Price </label>
            <input type="number" id="roomPrice" class="form-control" min="1">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-right">
            <button id="update" class="btn btn-primary">Update</button>
        </div>
    </div>
</div>
</body>
</html>
