<%@page import="java.util.Comparator"%>
<%@page import="quiz.helpers.RankingComparator"%>
<%@page import="java.util.UUID"%>
<%@page import="quiz.models.Player"%>
<%@page import="java.util.Collections"%>
<%@page import="quiz.models.Score"%>
<%@page import="java.util.ArrayList"%>
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
    <script language="JavaScript" src="TratamentoEntradas.js"></script>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <section class="featured">
            <div class="container"> 
                <div class="row mar-bot40">
                    <div class="col-md-6 col-md-offset-3">

                        <div class="align-center">
                            <i class="fa fa-list fa-5x mar-bot20"></i>
                            <form class="form-group" method="POST" name ="formUser" action="quiz.jsp">
                            <h2 class="slogan">Usuário</h2>
                            <p>
                                Olá, caro jogador. A seguir será apresentada uma sequência de perguntas com apenas uma alternativa correta
                                para cara. Antes de iniciar seu teste é aconselhavel que informe seu nome no campo a baixo para identificar 
                                sua pontuação.
                            </p>
                            <div class="input-group">
                                <input class="form-control" type="text" size="30" name="name" id ="nome" maxlength="30" placeholder="Insira seu nome" onkeypress="Letras(formUser.nome);"/> 
                                <span class="input-group-btn"><button type="submit" title="Jogar!" class="btn btn-primary">Go!</button></span>
                            </div>
                          </form>
                           	
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
