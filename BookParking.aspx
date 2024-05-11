<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookParking.aspx.cs" Inherits="StudentLogin" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>Parking</title>
<!-- Favicon-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/login.css" rel="stylesheet">

<!-- Swift Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="assets/css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="login-page authentication">

<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title">Book Parking <asp:Image ID="Image1" Width="50px" ImageUrl="~/Images/parking.jpg" runat="server" /></h1>
        <div class="col-md-12">
            <form id="sign_in" runat="server" method="POST">
                
                <div>
                    <div class="form-line">
                        <asp:Image ID="Image2" Height="150px" Width="100%" ImageUrl ="~/Images/BookPark.png" runat="server" />
                    </div>
                </div>
                <br />
             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlArea" runat="server" AutoPostBack="true" Height="25px" Width="100%" >
                    <asp:ListItem>Select Your Area</asp:ListItem>
                    <asp:ListItem>Shegaon Naka</asp:ListItem>
                    <asp:ListItem>Kathora Naka</asp:ListItem>
                    <asp:ListItem>Panchawati</asp:ListItem>
                        <asp:ListItem>Rathi Nagar</asp:ListItem>
                    <asp:ListItem>Irwin Square</asp:ListItem>
                    <asp:ListItem>Rajapeth</asp:ListItem>
                    <asp:ListItem>Sai Nagar</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>

                <div>
                    
                    <div class="text-center">
                        <%--<a href="Admin/AdminDefault.aspx" class="btn btn-raised waves-effect g-bg-cyan" type="submit">SIGN IN</a>--%>
                       <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Check Slots" OnClick="Button1_Click1"  />
                    </div>
                    
                    <div class="text-center"> <a href="Default.aspx">Home Page</a></div>
                </div>
            </form>
        </div>
    </div>    
</div>
<div class="theme-bg"></div>

<!-- Jquery Core Js --> 
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="assets/js/pages/examples/sign-in.js"></script>
</body>

   <head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>30% Sale Banner</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .banner {
        background-color: #FF9900;
        color: #fff;
        text-align: center;
        padding: 20px;
        position: relative;
    }

    .sale-text {
        font-size: 24px;
        margin-bottom: 10px;
    }

    .sale-countdown {
        font-size: 20px;
    }

    .btn {
        display: inline-block;
        padding: 12px 24px;
        background-color: #fff;
        color: #FF9900;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }

    .btn:hover {
        background-color: #FFCC66;
        color: #fff;
    }
</style>
</head>
<body>

<div class="banner">
    <div class="sale-text">Big Sale! Get 30% Off Today!</div>
    <div class="sale-countdown" id="countdown"></div>
    <a href="#shop-now" class="btn">Shop Now</a>
</div>

<script>
    // Set the date for the end of the sale (change as needed)
    const saleEndDate = new Date('2024-05-31T23:59:59');

    function updateCountdown() {
        const now = new Date().getTime();
        const distance = saleEndDate - now;

        // Calculate days, hours, minutes, and seconds
        const days = Math.floor(distance / (1000 * 60 * 60 * 24));
        const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Display the countdown
        document.getElementById('countdown').innerHTML = `Sale ends in: ${days}d ${hours}h ${minutes}m ${seconds}s`;

        // Update the countdown every second
        if (distance < 0) {
            clearInterval(updateInterval);
            document.getElementById('countdown').innerHTML = 'Sale has ended!';
        }
    }

    // Update the countdown immediately
    updateCountdown();

    // Update the countdown every second
    const updateInterval = setInterval(updateCountdown, 1000);
</script>

</body>



<!-- Mirrored from thememakker.com/swift/hospital/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 26 Feb 2017 17:11:01 GMT -->
</html>



