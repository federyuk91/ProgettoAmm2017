<%-- 
    Document   : profilo
    Created on : 5-mag-2017, 22.41.24
    Author     : Federico
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<article>
    <h2>${utente.nome} ${utente.cognome}:</h2>
    <h3>${utente.presentazione}</h3>
    <img src="${utente.urlFotoProfilo}" alt ="Immagine del profilo">
    Altre info:
    <ol>
        <li>Nome :  ${utente.nome}</li>
        <li>Cognome : ${utente.cognome}</li>
        <li>E-mail: ${utente.email}    </li>
    </ol>
</article>
