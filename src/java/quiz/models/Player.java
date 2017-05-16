package quiz.models;

import java.util.ArrayList;

/**
 *
 * @author jeffersoncn
 * @author Tiago Farias
 */
public final class Player {
    
    private String id;
    private String name;
    public static ArrayList<Player> players;
    
    public Player(String id, String name){
        this.setId(id);
        this.setName(name);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static ArrayList<Player> getPlayers() {
        return players;
    }

    public static void setPlayer(Player player) throws ClassNotFoundException {
        if(!(player instanceof Player)){
            throw new ClassNotFoundException(player+" must be an instance of Player");
        }
        
        if(!(players instanceof ArrayList)){
            players = new ArrayList<>();
        }
        players.add(player);
    }    
}
