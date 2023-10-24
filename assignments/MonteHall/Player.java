package CourseWorkRespository.csc240classexamples.assignments.MonteHall;

public class Player {

    private int chosenDoor;
    private boolean sw;

    public Player(){
        chosenDoor = 0;
        sw = true;
    }

    public Player(int cD, boolean s){
        chosenDoor = cD;
        sw = s;
    }

    public int getChosenDoor(){
        return chosenDoor;
    }

    public boolean getSwitchStatus(){
        return sw;
    }



}
