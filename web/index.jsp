<%-- 
    Document   : index
    Created on : 16/05/2017, 20:10:21
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Quiz</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="libs/css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="libs/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="libs/css/bootstrap.css">
        <link rel="stylesheet" href="libs/css/bootstrap-theme.css">
        <link rel="stylesheet" href="libs/css/style.css">
        <link rel="stylesheet" href="libs/css/default.css">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <section class="featured">
            <div class="container"> 
                <div class="row mar-bot40">
                    <div class="col-md-6 col-md-offset-3">

                        <div class="align-center">
                            <i class="fa fa-flask fa-5x mar-bot20"></i>
                            <h2 class="slogan">Bem vindo ao Quiz</h2>
                            <p>
                                Se divirta testando seus conhecimentos com nosso incrivel Quiz.
                                Você poderá responder as perguntas e ter sua pontuação marcada
                                instantaneamente na nossa pagina de ranking, venha competir com 
                                seus amigos! 
                            </p>	
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="section-services" class="section pad-bot30 bg-white">
            <div class="container"> 
                <div class="row mar-bot40">
                    <div class="col-lg-6" >
                        <div class="align-center">
                            <a href="quiz.jsp">  <i class="fa fa-arrow-right fa-5x mar-bot30"></i></a>
                            <a href="quiz.jsp"><h4 class="text-bold">Responder ao Quiz</h4></a>
                            <p> 
                                Clique em responder ao Quiz para iniciar seu teste.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-6" >
                        <div class="align-center">
                            <a href="ranking.jsp">  <i class="fa fa-list-ol fa-5x mar-bot30"></i></a>
                            <a href="ranking.jsp"> <h4 class="text-bold">Ranking</h4></a>
                            <p>
                                Clique em Ranking para visualizar sua colocação no ranking geral.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="WEB-INF/jspf/footer.jspf" %>

        <a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a>	

        <script src="libs/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="libs/js/jquery.js"></script>
        <script src="libs/js/jquery.easing.1.3.js"></script>
        <script src="libs/js/bootstrap.min.js"></script>
        <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="libs/js/jquery.isotope.min.js"></script>
        <script src="libs/js/jquery.nicescroll.min.js"></script>
        <script src="libs/js/fancybox/jquery.fancybox.pack.js"></script>
        <script src="libs/js/skrollr.min.js"></script>		
        <script src="libs/js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script src="libs/js/jquery.localscroll-1.2.7-min.js"></script>
        <script src="libs/js/stellar.js"></script>
        <script src="libs/js/jquery.appear.js"></script>
        <script src="libs/js/main.js"></script>
        <script src="libs/js/contactform.js"></script>

    </body>
</html>

