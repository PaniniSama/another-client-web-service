<%-- 
    Document   : index
    Created on : 26 nov. 2020, 19:27:56
    Author     : Saad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bahnini Saad - GINF3 - Testing web service on JSP</h1>    <%-- start web service invocation --%><hr/>
    <%
    try {
	webservice.CalculatriceWS_Service service = new webservice.CalculatriceWS_Service();
	webservice.CalculatriceWS port = service.getCalculatriceWSPort();
	 // TODO initialize WS operation arguments here
	int arg0 = 69;
	int arg1 = 420;
	// TODO process result here
	int result = port.add(arg0, arg1);
	out.println("HMMM .... looks like the Result is = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
