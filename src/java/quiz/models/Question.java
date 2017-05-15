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
public class Question {
    private String text;
    private ArrayList<Option> options;
    private Option selectedOption;

    public Question(String text) {
        this.text = text;
        this.options = new ArrayList<>();
    }

    public ArrayList<Option> getOptions() {
        return options;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Option getSelectedOption() {
        return selectedOption;
    }

    public void selectOption(Option selectedOption) {
        this.selectedOption = selectedOption;
    }
    
    public void addOption(String text, boolean isCorrect) {
        Option newOption = new Option(text, isCorrect);
        
        this.options.add(newOption);
    }
}