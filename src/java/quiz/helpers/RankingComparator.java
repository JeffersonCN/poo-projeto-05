/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz.helpers;

import java.util.Comparator;
import quiz.models.Score;

/**
 *
 * @author schle
 */
public class RankingComparator implements Comparator<Score> {

    @Override
    public int compare(Score o1, Score o2) {
        return o2.getScore().compareTo(o1.getScore());
    }

}
