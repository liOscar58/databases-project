<%@ page import="com.demo.LayoutService" %>
<%@ page import="com.demo.Pair" %>
<%@ page import="com.demo.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    ArrayList<Message> messages;

    // get any incoming messages from session attribute named messages
    // if nothing exists then messages is an empty arraylist
    if ((ArrayList<Message>) session.getAttribute("messages") == null) messages = new ArrayList<>();
        // else get that value
    else messages = (ArrayList<Message>) session.getAttribute("messages");

    String msgField = "";

    // create the object in the form of a stringified json
    for (Message m : messages) {
        msgField += "{\"type\":\"" + m.type + "\",\"value\":\"" + m.value.replaceAll("['\"]+", "") + "\"},";
    }

    // empty session messages
    session.setAttribute("messages", new ArrayList<Message>());

    // retrieve best dribbler/shooter details from database
    Pair<String, Integer> bestDribblerDetails = null, bestShooterDetailes = null;
    LayoutService layoutService = new LayoutService();
    try {
        bestDribblerDetails = layoutService.getBestDribblerDetails();
        bestShooterDetailes = bestDribblerDetails;
        // bestShooterDetailes = layoutService.getBestShooterDetails();

    } catch (Exception e) {
        e.printStackTrace();
    }
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title> Home Page </title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
</head>

<body>

<jsp:include page="old/navbar.jsp"/>

<!-- NavBar -->
<nav class="navbar navbar-expand-sm bg-dark">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Hotels</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Login</a>
        </li>
    </ul>
</nav>

<!-- stylistic header with logo and about us-->
<div class="header">
    <div class="row align-items-center justify-content-center text-center">
        <div class="col-md-6">
            <h1>Canada Compares</h1>
            <p>Compare thousands of hotels in Canada for your travel needs.</p>
        </div>
        <div class="col-md-6">
            <img class="logo" src="imgs/CClogo.png" alt="Hotel Booker Logo">
        </div>
    </div>
</div>

<!-- Hotel Search Bar with variables -->
<div class="search-container">
    <div class="row">
        <div class="col-md-3">
            <label for="checkIn">Check-in:</label>
            <input type="date" id="checkIn" class="form-control">
        </div>
        <div class="col-md-3">
            <label for="checkOut">Check-out:</label>
            <input type="date" id="checkOut" class="form-control">
        </div>
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
            <label for="rooms">Total Number of Rooms:</label>
            <input type="number" id="rooms" class="form-control" min="1">
        </div>
        <!--implement price slider-->
        <div class="col-md-3">
            <label for="priceSlider">Price Range:</label>
            <div id="priceSlider" class="slider"></div>
            <span id="priceSliderValue"></span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-right">
            <button id="search" class="btn btn-primary">Search</button>
        </div>
    </div>
</div>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/assets/js/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

<script>
    $(document).ready(function() {
        toastr.options = {
            "closeButton": true,
            "positionClass": "toast-bottom-right",
            "preventDuplicates": false
        };
        /* In order to access variables sent to ejs file to script you must Parse them to string */
        /* then to parse them back to JSON */
        let messages = document.getElementById("message").value;
        if (messages !== "") messages = JSON.parse("[" + messages.slice(0, -1) + "]");
        else messages = [];

        messages
            .forEach(({
                          type,
                          value
                      }) => {
                switch (type) {
                    case "error":
                        toastr.error(value)
                        break;
                    case "success":
                        toastr.success(value)
                        break;
                    case "warning":
                        toastr.warning(value)
                        break;
                    default:
                        toastr.info(value)
                        break;
                }
            });
    })
</script>
</body>

</html>