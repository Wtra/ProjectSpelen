<%-- 
    Document   : editSpel
    Created on : Jan 8, 2015, 11:08:11 AM
    Author     : FxA
--%>
<%@page import="DAL.Category"%>
<%@page import="Services.SpelServices"%>
<%@page import="DAL.Spel"%>
<%@page import="ViewModels.LijstSpelViewModel"%>
<% Spel vm = (Spel)session.getAttribute("ViewModel"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Spel bewerken</h1>
        <form class="form-horizontal" action="SpelBewerkenController" role="form">
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
                    <input value="<%= vm.getAantalPersonenTot() %>" type="text" name="aantalPersonenTot" class="form-control" id="aantalPersonenTot" placeholder="aantalPersonenTot">
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
                    <input value="<%= vm.getCategory().getName() %>" type="text" name="categorie" class="form-control" id="categorie" placeholder="categorie">
                     <select name="categorie-id" id="categorie-id">
                        <% 
                            for(Category categorie : SpelServices.getAllCategories()){ %>
                            <option value="<%= categorie.getId()%>"><%=categorie.getName() %></option>
                            <% } %>
                    </select>
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