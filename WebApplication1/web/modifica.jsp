<%-- 
    Document   : profilo
    Created on : 5-mag-2017, 22.41.24
    Author     : Federico
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<article>
    
    <h2>Profilo di ${utente.nome}</h2>
    <img src="${utente.urlFotoProfilo}" alt ="Immagine del profilo">
    <form action="Profilo" method="post">
        <label for="Nome">Nome</label>
        <input type="text" id="Nome" name="nome" value="${utente.nome}">
        
        <label for="Cognome">Cognome</label>
        <input type="text" id="Cognome" name="cognome" value="${utente.cognome}">
        
        <label for="Presentazione">Presentazione</label>
        <input type="text" id="Presentazione" name="presentazione" value="${utente.presentazione}">
        
        <label for="ImgProfilo">Link Foto Profilo</label>
        <input type="text" id="ImgProfilo" name="urlFotoProfilo" value="${utente.urlFotoProfilo}">

        <label for="E-Mail">Indirizzo e-mail</label>
        <input type="text" id="Stato" name="email" value="${utente.email}">

        <label for="Password">Password</label>
        <input type="password" id="Password" value="${utente.password}">

        <label for="Password2">Conferma Password</label>
        <input type="password" id="Password2" value="${utente.password}">

        <input type="submit" name="submit" value="Invia informazioni"/>
    </form>
</article>
