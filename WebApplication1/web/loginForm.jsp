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
        
        <div id="Login">
            <c:set var="title" value="Login" scope="request"/>
            <jsp:include page="header.jsp"/>
            
            <c:if test="${invalidData == true}">
                <div id="invalidDataWarning">I dati inseriti non sono corretti</div>
            </c:if>
            <form action="Login" method="post">
                <div>
                    <label for="userName">Username</label>
                        <input type="text" name="username" id="userName">
                </div>
                <div>
                    <label for="userPass">Password</label>
                    <input type="password" name="password" id="userPass">
                </div>
                <button type="submit">Invia</button>
            </form>
            <jsp:include page="nav.jsp"/>
            
        </div>    
    </body>
</html>
