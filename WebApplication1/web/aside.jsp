<%-- 
    Document   : header
    Created on : 10-apr-2017, 11.31.36
    Author     : Federico Bachis
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside>
    <h1>Persone</h1>
    <c:forEach var="user" items="${users}">
        <a href="Bacheca">${user.getNome()}</a>
    </c:forEach>
    <h1 id="groups">Gruppi</h1>
    <a href="">Mongolfieristi</a>
    <a href="">Ritardatari</a>
</aside>
