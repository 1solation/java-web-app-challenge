<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful Form Input</title>
</head>
<body>
    <% 
    String siteName = request.getParameter("site_name");
    if (siteName == null) {
    %>
        <h3><%= siteName = "Avalon City" %></h3>
    <%
        } else {
        	siteName = request.getParameter("site_name");
    %>
			        <h3><%= siteName %></h3>
    <%
        }
    %>
	<p>Thank you <%= request.getParameter("first_name") %></p>
	<p>Test Values: </p>
		<ul>
			<li>Site name = <%= siteName %></li> 
			<!-- might have to do a conditional stmt if sitename comes as null if its not set in url params -->
			<li>Email = <%= request.getParameter("email_address") %></li>
			<li>Address Line 1 = <%= request.getParameter("address_line_1") %></li>
			<li>Address Line 2 = <%= request.getParameter("address_line_2") %></li>
			<li>City = <%= request.getParameter("city") %></li>
			<li>Postcode = <%= request.getParameter("postcode") %></li>
			<li>Tel NUmber = <%= request.getParameter("tel_number") %></li>
		</ul>

</body>
</html>