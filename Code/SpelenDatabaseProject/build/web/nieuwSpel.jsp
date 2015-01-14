<%-- 
    Document   : nieuwSpel
    Created on : Jan 8, 2015, 11:08:36 AM
    Author     : FxA
--%>

<%@page import="Services.SpelServices"%>
<%@page import="DAL.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Voeg een nieuw spel toe</h1>
        <form class="form-horizontal" action="NieuwSpelController" role="form">
           
            <div class="form-group">
                <label for="titel" class="col-sm-2 control-label">titel</label>
                <div class="col-sm-10">
                    <input type="text" name="titel" class="form-control" id="titel" placeholder="titel">
                </div>
            </div>
            <div class="form-group">
                <label for="aantalPersonenVanaf" class="col-sm-2 control-label">aantalPersonenVanaf</label>
                <div class="col-sm-10">
                    <input type="text" name="aantalPersonenVanaf" class="form-control" id="aantalPersonenVanaf" placeholder="aantalPersonenVanaf">
                </div>
            </div>
            <div class="form-group">
                <label for="aantalPersonenTot" class="col-sm-2 control-label">aantalPersonenTot</label>
                <div class="col-sm-10">
                    <input type="text" name="aantalPersonenTot" class="form-control" id="aantalPersonenTot" placeholder="aantalPersonenTot">
                </div>
            </div>
            <div class="form-group">
                <label for="omschrijvingSpel" class="col-sm-2 control-label">omschrijvingSpel</label>
                <div class="col-sm-10">
                    <input type="text" name="omschrijvingSpel" class="form-control" id="omschrijvingSpel" placeholder="omschrijvingSpel">
                </div>
            </div>
            <div class="form-group">
                <label for="benodigdheden" class="col-sm-2 control-label">benodigdheden</label>
                <div class="col-sm-10">
                    <input type="text" name="benodigdheden" class="form-control" id="benodigdheden" placeholder="benodigdheden">
                </div>
            </div>
            
         <div class="form-group">
                <label for="categorie" class="col-sm-2 control-label">categorie</label>
                <div class="col-sm-10">
                    <select name="categorie-id" id="categorie-id">
                        <% 
                            for(Category categorie : SpelServices.getAllCategories()){ %>
                            <option value="<%= categorie.getId() %>"><%=categorie.getName() %></option>
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