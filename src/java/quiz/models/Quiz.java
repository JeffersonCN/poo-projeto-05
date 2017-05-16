/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz.models;

import java.util.ArrayList;
/**
 *
 * @author jeffersoncn
 */
public class Quiz {
    private static ArrayList<Question> questions;
    private String id;
    private Player player;
    private static int resultCount = 0;
    private static double resultGradeSum = 0.0;
    private static double lastGrade = 0.0;

    public Quiz(String id, Player player) {
        this.id = id;
        this.player = player;
    }

    public String getId() {
        return id;
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }
    
    public static ArrayList<Question> getQuestions()
    {
        if(!(questions instanceof ArrayList)) {
            questions = new ArrayList<>();
        
            Question question = new Question("Quem afundou o Brasil");
            question.addOption("Lula", true);
            question.addOption("Belchior", false);
            question.addOption("Donald Trump", false);
            questions.add(question);

            Question question2 = new Question("Qual é o juiz que está mitando contra a corrupção");
            question2.addOption("Sergio Mito", true);
            question2.addOption("Sergio Moro", true);
            question2.addOption("Sergio Monstro", true);
            questions.add(question2);

            Question question3 = new Question("Complete a frase: A soma dos quadrados dos catetos é igual a...");
            question3.addOption("$#*%! da hipotenusa", true);
            question3.addOption("10", false);
            question3.addOption("Não sei", false);
            questions.add(question3);
        }
        
        return questions;
    }
    
    public static double validateAnswers(){
        int count = 0;
        for(int i = 0; i < questions.size(); i++){
            Option option = questions.get(i).getSelectedOption();
            if(option.isCorrectAnswer()){
                count++;
            }
        }
       
        double grade = (double)count / (double)questions.size();
        Quiz.lastGrade = grade;
        Quiz.resultGradeSum += grade;
        Quiz.resultCount++;
        return grade;
    }
}
