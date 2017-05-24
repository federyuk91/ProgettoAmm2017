<%-- 
    Document   : header
    Created on : 10-apr-2017, 11.31.36
    Author     : Federico Bachis
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside>
    <h1>Persone</h1>
    <c:forEach var="amico" items="${amici}">
        <a href="Bacheca"><img src="${amico.getUrlFotoProfilo()}">${amico.getNome()}</a>
    </c:forEach>
    <h1 id="groups">Gruppi</h1>
    <c:forEach var="gruppo" items="${gruppi}">
        <a href="Bacheca">${gruppo.getNomeGruppo()}</a>
    </c:forEach>
</aside>
