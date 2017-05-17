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
        
            Question question = new Question("O primeiro jogo de Resident Evil  foi lançado no ano de:");
            question.addOption("1996", true);
            question.addOption("1993", false);
            question.addOption("1995", false);
            question.addOption("1994", false);
            questions.add(question);

            Question question2 = new Question("É considerado o criador de Resident Evil:");
            question2.addOption("Akira Toriyama", false);
            question2.addOption("Akihiro Suzuki ", false);
            question2.addOption("Shinji Mikami", true);
            question2.addOption("Masami Kurumada", false);
            questions.add(question2);

            Question question3 = new Question("Protagonista de Resident Evil Dead Aim:");
            question3.addOption("Rebecca Chambers", false);
            question3.addOption("Bruce Mc Givern", true);
            question3.addOption("Ethan Winters", false);
            question3.addOption("Alyssa Ashcroft", false);
            questions.add(question3);
            
            Question question4 = new Question("Qual o objeto usado para salvar o jogo:");
            question4.addOption("Celular", false);
            question4.addOption("Máquina de escrever", true);
            question4.addOption("Um livro", false);
            question4.addOption("Uma estátua", false);
            questions.add(question4);
            
            Question question5 = new Question("Em que ano Resident Evil 3 foi lançado para ps1:");
            question5.addOption("1998 no Japão e 1999 no ocidente.", false);
            question5.addOption("2000 no Japão e 2001 no ocidente.", false);
            question5.addOption("1998 no ocidente e 1999 no Japão.", false);
            question5.addOption("1999 no Japão e 2000 no ocidente.", true);
            questions.add(question5);
            
            Question question6 = new Question("Qual o nome completo de Nemesis:");
            question6.addOption("Nemesis T-Type", true);
            question6.addOption("NE-alpha", false);
            question6.addOption("Tyrant T-002", false);
            question6.addOption("Proto Tyrant", false);
            questions.add(question6);
            
            Question question7 = new Question("Qual dessas criatura não esta presente em Resident Evil 3:");
            question7.addOption("Giant Spider", false);
            question7.addOption("Brain Suckers", false);
            question7.addOption("Hunter Gamma", false);
            question7.addOption("Licker", true);
            questions.add(question7);
            
            Question question8 = new Question("O número de medalhões azuis em Resident Evil 4 é:");
            question8.addOption("13", true);
            question8.addOption("10", false);
            question8.addOption("15", false);
            question8.addOption("20", false);
            questions.add(question8);
            
            Question question9 = new Question("Qual a idade de Ashley em Resident Evil 4:");
            question9.addOption("15", false);
            question9.addOption("18", false);
            question9.addOption("19", false);
            question9.addOption("20", true);
            questions.add(question9);
            
            Question question10 = new Question("Quem mata Krauser em Resident Evil 4:");
            question10.addOption("Ada", true);
            question10.addOption("Ashley", false);
            question10.addOption("Leon", false);
            question10.addOption("Jake", false);
            questions.add(question10);
            
            Question question11 = new Question("Nome correto da irmã de Chris redfield:");
            question11.addOption("Clair Redfield", false);
            question11.addOption("Claire Redfield", true);
            question11.addOption("Clarie Redfield", false);
            question11.addOption("Claer Redfield", false);
            questions.add(question11);
            
            Question question12 = new Question("Como são chamados os inimigos em Resident 5:");
            question12.addOption("Uruboros", false);
            question12.addOption("Majinis", true);
            question12.addOption("Ganados", false);
            question12.addOption("Zumbis", false);
            questions.add(question12);
            
            Question question13 = new Question("Qual o nome do vírus presente em Resident Evil 6:");
            question13.addOption("T-vírus", false);
            question13.addOption("Ne-alpha", false);
            question13.addOption("C-vírus", true);
            question13.addOption("G-vírus", false);
            questions.add(question13);
            
            Question question14 = new Question("Qual o crime de Helena Harper em Resident Evil 6:");
            question14.addOption("Ajudar Derek Simmons a assassinar o presidente", true);
            question14.addOption("Espalhar a infecção na cidade", false);
            question14.addOption("Ajudar a sequestrar a filha do presidente", false);
            question14.addOption("Entregar uma amostra do vírus ao Derek Simmons", false);
            questions.add(question14);
            
            Question question15 = new Question("Jake e Sherry possuem anticorpos para os vírus:");
            question15.addOption("C-vírus e T-vírus", false);
            question15.addOption("G-vírus e C-vírus", false);
            question15.addOption("T-vírus e G-vírus", false);
            question15.addOption("C-vírus e G-vírus", true);
            questions.add(question15);
            
            Question question16 = new Question("O nome do jogo no Japão é:");
            question16.addOption("Resident Evil", false);
            question16.addOption("Resistence", false);
            question16.addOption("Bio Hazard", true);
            question16.addOption("Biológic's monsterous", false);
            questions.add(question16);
            
            Question question17 = new Question("Personagem que não aparece em Resident Evil Umbrella Chronicles é:");
            question17.addOption("Barry Burton", true);
            question17.addOption("Rebecca Chambers", false);
            question17.addOption("Nemesis", false);
            question17.addOption("Ada Wong", false);
            questions.add(question17);
            
            Question question18 = new Question("Em qual jogo Albert Wesker mostra ter ressucitado pela primeira vez:");
            question18.addOption("Resident Evil 2", false);
            question18.addOption("Resident Evil CODE Veronica", true);
            question18.addOption("Resident Evil Outbreak FILE 2", false);
            question18.addOption("Resident Evil 4", false);
            questions.add(question18);
            
            Question question19 = new Question("Qual o nome da seita religiosa de Resident Evil 4:");
            question19.addOption("Las Plagas", false);
            question19.addOption("Los Illuminados", true);
            question19.addOption("Saddler followers", false);
            question19.addOption("La imaginación", false);
            questions.add(question19);
            
            Question question20 = new Question("Qual personagem tem uma amostra do G-Virus em um colar:");
            question20.addOption("William", false);
            question20.addOption("Claire", false);
            question20.addOption("Kratos", false);
            question20.addOption("Sherry", true);
            questions.add(question20);
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
