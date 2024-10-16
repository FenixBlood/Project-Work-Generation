<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@400;700&display=swap" rel="stylesheet">
    
    <!-- il mio CSS -->
    <link rel="stylesheet" href="styles.css">
</head>

<body class="d-flex justify-content-center align-items-center min-vh-100 py-4 bg-dark text-light">
    <main class="form-signin w-100 m-auto" style="max-width: 400px;">
        <form action="login" method="post">
            <nav class="navbar navbar-expand-lg bg-transparent">
                <div class="container-fluid d-flex justify-content-center">
                    <h1 class="navbar-brand fs-1" style="font-size: 3rem;"> <span style="color: white;">LOG</span><span style="color:#652c9b;">IN</span> </h1>  
                </div>
            </nav>
            
            <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon1">Username</span>
                <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" id="username" name="username" required>
            </div>
            <% if(request.getParameter("erroreUsername") != null){ %>
                <div class="text-danger mb-3">Inserisci il tuo username!</div>
            <% } %>
            
            <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon1">Password</span>
                <input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" id="password" name="password" required>
            </div>
            <% if(request.getParameter("errorePassword") != null){ %>
                <div class="text-danger mb-3">Inserisci la tua password!</div>
            <% } %>
            
            <button class="btn btn-bd-primary2 w-100 py-2 fw-bold text-uppercase" type="submit"><span style="color: white;">LOG</span><span style="color:#652c9b;">IN</span></button>
            
            <% if(request.getParameter("erroreCredenziali") != null){ %>
                <div class="alert alert-danger mt-3" role="alert">
                    <p class="text-center">Credenziali errate!</p>
                </div>
            <% } %>
            
            <div class="mt-1">
                <p>Don't have an account?</p>
            </div>
            <div class="mt-10">
                <a class="btn btn-bd-primary2 py-2 fw-bold text-uppercase" href="sign-in.jsp"><span style="color: white;">SIGN</span><span style="color:#652c9b;">IN</span></a>
            </div>
        </form>
    </main>
    
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
