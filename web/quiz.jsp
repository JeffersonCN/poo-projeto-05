<%@page import="java.util.Random"%>
<%@page import="java.util.Collection"%>
<%@page import="quiz.models.Option"%>
<%@page import="quiz.models.Quiz"%>
<%@page import="quiz.models.Question"%>
<%@page import="java.util.Comparator"%>
<%@page import="quiz.helpers.RankingComparator"%>
<%@page import="java.util.UUID"%>
<%@page import="quiz.models.Player"%>
<%@page import="java.util.Collections"%>
<%@page import="quiz.models.Score"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String strError = null;
    String name = null;
    boolean hasError = false;
    String user_id = UUID.randomUUID().toString();
    String quiz_id = UUID.randomUUID().toString();

    try {
        name = request.getParameter("name");
    } catch (Exception e) {
        strError = "Deu erro no getParameter manolo. Erro: " + e.getMessage();
    }

    if (hasError || name == null || name.isEmpty()) {
        response.sendRedirect("user.jsp");
    }

    Player player = new Player(user_id, name);
    Player.setPlayer(player);

    Quiz quiz = new Quiz(quiz_id, player);

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
                            <i class="fa fa-list fa-5x mar-bot20"></i>
                        </div>
                        <form name="formQuiz" method="POST" action="result.jsp">
                            <input type="hidden" name="quizId" value="<%= quiz.getId()%>">
                            <input type="hidden" name="playerId" value="<%= player.getId()%>">
                            <%
                                ArrayList<Question> test = Quiz.getQuestions();
                                long seed = System.nanoTime();
                                Collections.shuffle(test, new Random(seed));
                            %>
                            <% for (int i = 0; i < 10; i++) {
                                Question question = test.get(i);
                            %>
                            <div class="panel panel-default">
                                <div class="panel-heading"><%=i+1%>. <%= question.getText()%></div>
                                <% for (Option option : question.getOptions()) {%>
                                <label style="color: #454545;" for="question<%=test.indexOf(question)%>">
                                    <input type="radio"  name="question<%=test.indexOf(question)%>" value="<%= option.getText()%>"/><%= option.getText()%>
                                </label>
                                <br/>
                                <%}%>
                            </div>
                            <%}%>
                            <button type="submit" style="color: #454545">Enviar</button>
                        </form>
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
