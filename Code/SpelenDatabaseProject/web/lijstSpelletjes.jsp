<%-- 
    Document   : lijstSpelletjes
    Created on : Jan 8, 2015, 11:08:26 AM
    Author     : FxA
--%>

<%@page import="DAL.Spel"%>
<%@page import="ViewModels.LijstSpelViewModel"%>
<% LijstSpelViewModel vm = (LijstSpelViewModel)session.getAttribute("ViewModel"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spelletjes database</title>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>
    <body>
        <div id="container">
            <!-- HEADER -->
            <div id="header">
                <!--<div id="logo">Logo</div>
                <div id="top_info">Top info</div> -->
                <div id="titel">Spelletjes Database</div>
                <div id="navbar">
                    <ul>
                        <li><a href="#top">Home</a></li>
                        <li><a href="index.html">Index</a></li>
                        <li><a href="nieuwSpel.jsp">Voeg nieuw spel toe</a></li>
                    </ul>
                </div>
            </div>
            <!-- CONTENT AREA -->
            <div id="content_area">
                <% for (Spel spel : vm.getSpelletjes()) {%>
                <div class="div_article">
                    <article>
                        <div class="preview">
                            <h2><%= spel.getTitel()%></h2>
                            <ul class="meta">
                                <li><a href="#">Aantal personen vanaf: <%= spel.getAantalPersonenVanaf()%> </a></li>
                                <li><a href="#">Aantal personen tot: <%= spel.getAantalPersonenTot()%> </a></li>
                                <li><a href="#">Benodigdheden: <%= spel.getBenodigdheden()%></a></li> 
                                <li><a href="#">Categorie: <%= spel.getCategory().getName()%> </a></li> 
                                <li><a href="#">Counter: <%= spel.getCounter()%></a></li>
                            </ul>

                            <p class="post_comments"><a href="#">comments: </a><a href="#"> 44 comments</a></p>
                            <p class="post_comments"><a href="CommentToevoegenController?id=<%= spel.getId()%>">Voeg comment toe </a>
                            <div class="body">
                                <p>
                                    <%= spel.getOmschrijvingSpel()%>
                                </p>
                            </div>

                            <a class="buttons_body" href="SpelBewerkenController?id=<%= spel.getId()%>"> edit </a>
                            <a class="buttons_body" href="SpelVerwijderenController?id=<%= spel.getId()%>"> delete </a>
                            <br>
                            <div>
                                <a class="buttons_body" name="quoteren" value="positief" href="SpelPositiefQuoteren?id=<%= spel.getId()%>"> Goed spel </a>
                                <a class="buttons_body" name="quoteren" value="negatief" href="SpelNegatiefQuoteren?id=<%= spel.getId()%>"> Slecht spel </a>
                                <br> 
                            </div>

                        </div>
                        <div id="image">
                            <a href="#">
                                <img src="images/logoTuts.jpg" alt="<%= spel.getTitel()%>">
                            </a>
                        </div>

                    </article>
                </div>
                <% }%>
            </div>
        </div>
    </body>
</html>
