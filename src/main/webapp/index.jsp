<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.game.entity.Videogame" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Catalog</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@400;700&display=swap" rel="stylesheet">
    
    <!-- il mio CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Navbar -->
    <%@ include file="nav.jsp" %>	
    
    <!-- Creazione lista videogame -->
	<%List<Videogame> videogiochi = (List<Videogame>) request.getAttribute("videogames"); %>

    <!-- contenuto principale -->
    <div class="container pt-5">
        <div class="row justify-content-center pt-5 mb-2">
            <h1 style="text-align: center;">GAME<span style="color: #652c9b;">IN</span></h1>
        </div>
        <div class="row justify-content-center">
            <!-- introduco l'immagine principale o il possibile carosello-->
            <div class="col-lg-8">
            <a href="videogioco?id=<%= videogiochi.get(0).getId() %>">
                <div class="content-box">
                   <img src="<%= videogiochi.get(0).getFoto() %>"
                        alt="Descrizione dell'immagine" class="img-fluid"
                        style="border-radius: 10px; width: 100%; height: 100%; object-fit: cover;">
                </div>
             </a>
            </div>
        </div>
        <!-- introduco le immagini -->
        <div class="row justify-content-center mt-4">
           <div class="col-6 col-md-2">
           		 <a href="videogioco?id=<%= videogiochi.get(1).getId() %>">
                    <div class="card">

                        <img src="<%= videogiochi.get(1).getFoto() %>"
                             class="img-fluid"
                            style="border-radius: 10px; width: 100%; height: 100%; object-fit: cover;">

                    </div>
                </a>
            </div>
            <div class="col-6 col-md-2">
           		 <a href="videogioco?id=<%= videogiochi.get(2).getId() %>">
                    <div class="card">

                        <img src="<%= videogiochi.get(2).getFoto() %>"
                             class="img-fluid"
                            style="border-radius: 10px; width: 100%; height: 100%; object-fit: cover;">

                    </div>
                </a>
            </div>
            <div class="col-6 col-md-2">
           		 <a href="videogioco?id=<%= videogiochi.get(3).getId() %>">
                    <div class="card">

                        <img src="<%= videogiochi.get(3).getFoto() %>"
                             class="img-fluid"
                            style="border-radius: 10px; width: 100%; height: 100%; object-fit: cover;">

                    </div>
                </a>
            </div>
           <div class="col-6 col-md-2">
           		 <a href="videogioco?id=<%= videogiochi.get(4).getId() %>">
                    <div class="card">

                        <img src="<%= videogiochi.get(4).getFoto() %>"
                             class="img-fluid"
                            style="border-radius: 10px; width: 100%; height: 100%; object-fit: cover;">

                    </div>
                </a>
            </div>
            <div class="col-6 col-md-2">
           		 <a href="videogioco?id=<%= videogiochi.get(5).getId() %>">
                    <div class="card">

                        <img src="<%= videogiochi.get(5).getFoto() %>"
                             class="img-fluid"
                            style="border-radius: 10px; width: 100%; height: 100%; object-fit: cover;">

                    </div>
                </a>
            </div>
        </div>
        <!-- bottone che fa la find all e mostra tutti i videogiochi -->
        <form class="d-flex search-form mt-4 mb-3 mb-lg-0" action="cerca" method="GET"> <!-- aggiunti action e method -->
            <button class="btn-search" type="submit">Mostra altro...</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
