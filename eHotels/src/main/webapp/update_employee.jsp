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
<h2>Update Employee Registration</h2>
<form>
    <label for="fullName">Full Name:</label><br>
    <input type="text" id="fullName" name="fullName" required><br><br>

    <label for="address">Address:</label><br>
    <input type="text" id="address" name="address" required><br><br>

    <label for="employee_ssn">SSN/SIN:</label><br>
    <input type="text" id="employee_ssn" name="ssn" required><br><br>

    <label for="role">Role/Position:</label><br>
    <select id="role" name="role" required>
        <option value="">Select Role</option>
        <option value="Manager">Manager</option>
        <option value="Receptionist">Receptionist</option>
        <option value="Housekeeping">Housekeeping</option>
    </select><br><br>

    <input type="submit" value="Register">
</form>
</body>
</html>
