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
        <!--Importa l'header della pagina-->
        <jsp:include page="header.jsp"/>
        <!--Importa la sezione di navigazione della pagina-->
        <jsp:include page="nav.jsp"/>

        <!--Importa la sezione a margine della pagina-->
        <jsp:include page="aside.jsp"/>        
        
        <!--Rimuovere i commenti per vedere questa stringa con il valore della pagina: ${pagina}-->
        <!--Importa il contenuto della pagina-->
        <jsp:include page="${pagina}.jsp"/>        
        


    </body>
</html>
