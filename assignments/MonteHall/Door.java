package CourseWorkRespository.csc240classexamples.assignments.MonteHall;


public class Door {

    private int doorNumber;
    private boolean hasPrize = false;

    public Door(){
        doorNumber = -1;
    }
    
    public Door(int doorN){
        doorNumber = doorN;
    }

    public int getDoorNumber(){
        return doorNumber;
    }

    public void setPrizeTrue(){
        hasPrize = true;
    }

    public boolean getPrize(){
        return hasPrize;
    }

}
