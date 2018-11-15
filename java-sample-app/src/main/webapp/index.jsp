<html>
<head>
<title>Hello zippyops!</title>
</head>
<body>
	<h1>Hello!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from training-job
		<%= request.getRemoteAddr()  %></p>
</body>
