<%-- 
    Document   : article
    Created on : 5-mag-2017, 19.52.31
    Author     : Federico
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<article>
    <c:if test="${pagina == 'bacheca'}">

        <c:if test="${attenzione == 'ok'}">
            <jsp:include page="post.jsp"/>       
        </c:if>
        <c:if test="${attenzione == 'completa profilo'}">
            <div class="warning">Prima di vedere la bacheca ${attenzione}</div>
            <jsp:include page="modifica.jsp"/>        
        </c:if>
    </c:if>
    <c:if test="${pagina == 'profilo'}">
        <jsp:include page="profilo.jsp"/> 

    </c:if>
</article>
