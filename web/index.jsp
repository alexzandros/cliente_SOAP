<%-- 
    Document   : index
    Created on : 25/01/2015, 04:04:02 AM
    Author     : Carlos Rojas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página JSP que consume un servicio web SOAP</title>
        <style>
            div#nombre{
                font-weight: bolder;
                font-family: sans-serif;
                font-size: 2em;
            }
            
        </style>
    </head>
    <body>
        <h1>Hola Mundo!!!!</h1>
        
    <%-- start web service invocation --%><hr/>
    <%
    try {
	serviciosweb.ToFarenheitService_Service service = new serviciosweb.ToFarenheitService_Service();
	serviciosweb.ToFarenheitService port = service.getToFarenheitServicePort();
	 // TODO initialize WS operation arguments here
	double celsius = 28.0d;//temperatura agradable :D:D:D
	// TODO process result here
	double result = port.aFarenheit(celsius);
	out.println("La conversión retornada por el servicio web es: "+result+
                " grados Farenheit equivalen a "+celsius+" grados celsius");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    <div id="nombre">
        Carlos Roberto Rojas Contreras
    </div>
    </body>
</html>
