/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz.models;

/**
 *
 * @author jeffersoncn
 */
public class Option {
    private String text;
    private boolean correctAnswer;

    public Option(String text, boolean correctAnswer) {
        this.text = text;
        this.correctAnswer = correctAnswer;
    }
    
    public Option(String text) {
        this.text = text;
        this.correctAnswer = false;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean isCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(boolean correctAnswer) {
        this.correctAnswer = correctAnswer;
    }
}
