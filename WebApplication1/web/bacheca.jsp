<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NerdBook</title>

        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Federico Bachis">
        <meta name="keywords" content="nerd, lotr, fumetti, manga, anime, marvel">

        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <div id="testa">            
            <c:set var="title" value="Bacheca" scope="request"/>
            <jsp:include page="header.jsp"/>
            <jsp:include page="nav.jsp"/>
        </div>
        <jsp:include page="aside.jsp"/>

        <jsp:include page="contenuto.jsp"/>


    </body>
</html>
