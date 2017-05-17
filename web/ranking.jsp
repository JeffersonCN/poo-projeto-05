<%@page import="java.util.Comparator"%>
<%@page import="quiz.helpers.RankingComparator"%>
<%@page import="java.util.UUID"%>
<%@page import="quiz.models.Player"%>
<%@page import="java.util.Collections"%>
<%@page import="quiz.models.Score"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
                            <i class="fa fa-list fa-5x mar-bot20"></i>
                            <h2 class="slogan">Ranking</h2>
                            <p>
                                Os Hall dos Campeões é atualizado diariamente. 
                                Jogue com seus amigos e conquiste seu lugar no Podium.

                            </p>	
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="section-services" class="section pad-bot30 bg-white">
            <div class="container"> 
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-center">
                                    #
                                </th>
                                <th class="text-center">
                                    Nome
                                </th>
                                <th class="text-center">
                                    Pontuação
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
//                                Score.scores.clear();
//                                Score.scores.add(new Score(10, new Player(new UUID(1, 999), "Jogador 1")));
//                                Score.scores.add(new Score(1, new Player(new UUID(1, 999), "Jogador 3")));
//                                Score.scores.add(new Score(20, new Player(new UUID(1, 999), "Jogador 2")));
//                                Score.scores.add(new Score(-1, new Player(new UUID(1, 999), "Jogador 4")));
                                ArrayList<Score> ranking = Score.scores;
                                Collections.sort(ranking,new RankingComparator());
                                int r = 1;
                                for (Score score : ranking) {
                            %>
                            <tr>
                                <td class="text-center"><%= r++ %></td>
                                <td class="text-center"><%= score.getPlayer().getName()%></td>
                                <td class="text-center"><%= score.getScore()%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
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
