<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>Hello Dinesh!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from training-job
		<%= request.getRemoteAddr()  %></p>
</body>
