<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>AeroParker Challenge</title>
</head>
<body class="w3-light-grey">
	<!-- Page container -->
	<div class="w3-content w3-margin-top w3-center" style="max-width:700px;">
		<!-- Grid layout -->
  		<div class="w3-row-padding">
  		      <div class="w3-container w3-card w3-white w3-margin-bottom">
  			    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-plane fa-fw w3-margin-right w3-xxlarge w3-text-deep-orange"></i>AeroParker<i class="fa fa-car fa-fw w3-margin-left w3-xxlarge w3-text-deep-orange"></i></h2>
  			    <% 
  			    String siteName = request.getParameter("site_name");
  			    if (siteName != null) {
  			    %>
  			        <h3><%= siteName %></h3>
  			    <%
  			        } else {
  			        	siteName = "Avalon City";
  			    %>
  	  			        <h3><%= siteName %></h3>
  			    <%
  			        }
  			    %>
  			    
  			    	<div class="w3-container">
  			    	   <form action="FormController" method ="GET">
	  <p><input class="w3-input w3-padding-16" type="text" placeholder="Title" required name="title" maxlength="5"></p>
	  <p><input type="hidden" name="site_name" value=<%= siteName %>></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="First Name" required name="first_name" maxlength="50"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Last Name" required name="last_name" maxlength="50"></p>
      <p><input class="w3-input w3-padding-16" type="email" placeholder="Email Address" required name="email_address" maxlength="255"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Address Line 1" required name="address_line_1" maxlength="255"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Address Line 2" name="address_line_2" maxlength="255"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="City" name="city" maxlength="255"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Postcode" required name="postcode" maxlength="10"></p>
      <p><input class="w3-input w3-padding-16" type="number" placeholder="Telephone Number" name="tel_number" maxlength="20"></p>
      <p><button class="w3-button w3-light-grey w3-section" type="submit">SUBMIT</button></p>
    </form>
  			    	</div>
  				
  				</div>
  		</div>
	
	</div>
</body>
</html>