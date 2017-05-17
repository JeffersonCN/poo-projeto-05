<%@page import="quiz.models.Question"%>
<%@page import="quiz.models.Option"%>
<%@page import="quiz.models.Quiz"%>
<%@page import="java.util.Comparator"%>
<%@page import="quiz.helpers.RankingComparator"%>
<%@page import="java.util.UUID"%>
<%@page import="quiz.models.Player"%>
<%@page import="java.util.Collections"%>
<%@page import="quiz.models.Score"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = null;
    String strError = null;
    boolean hasError = false;
    double result = 0;
    ArrayList<Question> questions;
    String quizId = null;
    String playerId = null;
    Player player = null;

    try {
        id = request.getParameter("id");
        quizId = request.getParameter("quizId");
        playerId = request.getParameter("playerId");
        for (Player p : Player.getPlayers()) {
            if (p.getId().equals(playerId)) {
                player = p;
            }
        }

        questions = Quiz.getQuestions();
        for (int i = 0; i < questions.size(); i++) {
            for (Option o : questions.get(i).getOptions()) {
                if (o.getText().equals(request.getParameter(String.valueOf(i)))) {
                    questions.get(i).selectOption(o);
                }
            }
        }
    } catch (Exception e) {
        hasError = true;
        strError = "Erro: " + e.getMessage();
    }

    if (!hasError) {
        result = Quiz.validateAnswers();
        Score score = new Score((int)(result*100), player);
        Score.scores.add(score);
    }
%>

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
                            <i class="fa fa-star fa-5x mar-bot20"></i>
                            <h2 class="slogan">Parabéns</h2>
                            <p>
                                Olá, caro jogador. Voce acertou <%= (int)(result*100) %>% das perguntas! Parabéns!
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
