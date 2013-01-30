<h1>Hello World!</h1>
<%
out.println("Your IP address is " + request.getRemoteAddr() + "<br/>");
out.println("Your user agent is " + request.getHeader("user-agent") + "<br/>");
%>