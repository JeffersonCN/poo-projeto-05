/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz.models;

import java.util.ArrayList;
import java.util.UUID;
/**
 *
 * @author jeffersoncn
 */
public class Quiz {
    private static ArrayList<Question> questions;
    private UUID id;
    private Player player;

    public Quiz(UUID id, Player player) {
        this.id = id;
        this.player = player;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public UUID getId() {
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
}
