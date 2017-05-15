/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz.models;

import java.util.ArrayList;

/**
 *
 * @author schle
 */
public class Score {

    private Integer score;
    private Player player;
    public static ArrayList<Score> scores = new ArrayList<Score>();

    public ArrayList<Score> getRanking() {
        return scores;
    }

    public void setRanking(Score score) {
        scores.add(score);
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public static ArrayList<Score> getScores() {
        return scores;
    }

    public static void setScores(ArrayList<Score> scores) {
        Score.scores = scores;
    }

    

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }

    public Score(int score, Player player) {
        this.score = score;
        this.player = player;
    }

}
