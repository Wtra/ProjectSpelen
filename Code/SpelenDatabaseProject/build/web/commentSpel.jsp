<%-- 
    Document   : commentSpel
    Created on : Jan 9, 2015, 7:22:03 PM
    Author     : FxA
--%>

<%@page import="Services.SpelServices"%>
<%@page import="DAL.Spel"%>
<% Spel vm = (Spel) session.getAttribute("ViewModel");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Voeg een comment toe</h1>
        <form class="form-horizontal" action="CommentToevoegenController" role="form">
            <input type="hidden" name="edit" value="true">
            <input type="hidden" name="id" value="<%= vm.getId()%>">
            <div class="form-group">
                <label for="Model" class="col-sm-2 control-label">Titel</label>
                <div class="col-sm-10">
                    <input value="<%= vm.getTitel()%>" type="text" name="titel" class="form-control" id="titel" placeholder="titel">
                </div>
            </div>
            <div class="form-group">
                <label for="aantalPersonenVanaf" class="col-sm-2 control-label">Aantal personen vanaf</label>
                <div class="col-sm-10">
                    <input value="<%= vm.getAantalPersonenVanaf()%>" type="text" name="aantalPersonenVanaf" class="form-control" id="aantalPersonenVanaf" placeholder="aantalPersonenVanaf">
                </div>
            </div>
            <div class="form-group">
                <label for="aantalPersonenTot" class="col-sm-2 control-label">Aantal personen tot</label>
                <div class="col-sm-10">
                    <input value="<%= vm.getAantalPersonenTot()%>" type="text" name="aantalPersonenTot" class="form-control" id="aantalPersonenTot" placeholder="aantalPersonenTot">
                </div>
            </div>
            <div class="form-group">
                <label for="omschrijvingSpel" class="col-sm-2 control-label">omschrijvingSpel</label>
                <div class="col-sm-10">
                    <input value="<%= vm.getOmschrijvingSpel()%>" type="text" name="omschrijvingSpel" class="form-control" id="omschrijvingSpel" placeholder="omschrijvingSpel">
                </div>
            </div>
            <div class="form-group">
                <label for="benodigdheden" class="col-sm-2 control-label">benodigdheden</label>
                <div class="col-sm-10">
                    <input value="<%= vm.getBenodigdheden()%>" type="text" name="benodigdheden" class="form-control" id="benodigdheden" placeholder="benodigdheden">
                </div>
            </div>
            <div class="form-group">
                <label for="categorie" class="col-sm-2 control-label">categorie</label>
                <div class="col-sm-10">
                    <input value="" type="text" name="categorie" class="form-control" id="categorie" placeholder="categorie">
                </div>
            </div>
            <div class="form-group">
                <label for="categorie" class="col-sm-2 control-label">categorie</label>
                <div class="col-sm-10">
                    <input value="" type="text" name="categorie" class="form-control" id="categorie" placeholder="categorie">
                </div>
            </div>
            <div class="form-group">
                <label for="comment" class="col-sm-2 control-label">Geef uw comment</label>
                <div class="col-sm-10">
                    <input value="" type="text" name="comment" class="form-control" id="comment" placeholder="comment">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">opslaan</button>
                </div>
            </div>
        </form>
    </body>
</html>