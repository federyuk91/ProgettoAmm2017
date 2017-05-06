<%-- 
    Document   : header
    Created on : 10-apr-2017, 11.31.36
    Author     : Federico Bachis
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav>    
    <a href="Login?logout=1">Logout</a>
    <a href="Bacheca">Bacheca</a>
    <a href="Profilo">Profilo</a>

    <a href="Profilo"><img src="${utente.urlFotoProfilo}" width="50" height="50" alt="img"/></a>
</nav>
