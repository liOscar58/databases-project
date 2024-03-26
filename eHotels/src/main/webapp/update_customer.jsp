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
<h2>Update Customer Registration Form</h2>
<form action="submit_customer_info.jsp" method="POST">
    <label for="fullName">Full Name:</label><br>
    <input type="text" id="fullName" name="fullName" required><br><br>

    <label for="address">Address:</label><br>
    <input type="text" id="address" name="address" required><br><br>

    <label for="idType">Type of ID:</label><br>
    <select id="idType" name="idType" required>
        <option value="SSN">Social Security Number (SSN)</option>
        <option value="SIN">Social Insurance Number (SIN)</option>
        <option value="DL">Driving License (DL)</option>
    </select><br><br>

    <label for="id_num">ID Number:</label><br>
    <input type="text" id="id_num" name="id_num" placeholder="Enter ID Number" required><br><br>

    <label for="registrationDate">Date of Registration:</label><br>
    <input type="date" id="registrationDate" name="registrationDate" required><br><br>

    <input type="submit" value="Submit">

</form>
</body>
</html>
