<%-- 
    Document   : article
    Created on : 5-mag-2017, 19.52.31
    Author     : Federico
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<article>
    <h1>Tutti i ${pagina} di ${utente.nome} ${utente.cognome}</h1>
    <c:forEach var="post" items="${posts}">
        <div class="post">
            <c:if test="${post.postType == 'TEXT'}">
                <p>${post.content}</p>
            </c:if>
            <c:if test="${post.postType == 'IMAGE'}">
                <img alt="Post con foto" src="${post.content}">
            </c:if>
        </div>
    </c:forEach>
</article>
