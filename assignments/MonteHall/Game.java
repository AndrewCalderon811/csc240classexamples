package CourseWorkRespository.csc240classexamples.assignments.MonteHall;

import java.util.Random;

public class Game {
    
    private int amountOfDoors;
    private Door[] listOfDoors;
    private Door lastDoor = null;
    private int knownDoorPrize;
    private Player player;
    private Random random = new Random();
    
    public Game(){
        player = new Player();
        amountOfDoors = 3;
        listOfDoors = new Door[amountOfDoors];
        populate();
    }

    public Game(int numDoors, int chosenDoor, boolean sw){
        player = new Player(chosenDoor, sw);
        if(numDoors < 3){
            numDoors = 3;
        }
        amountOfDoors = numDoors;
        listOfDoors = new Door[amountOfDoors];
        populate();
    }

    public int getAmountOfDoors(){
        return amountOfDoors;
    }

    private void populate(){
        for(int i = 0; i< amountOfDoors; i++){
            listOfDoors[i] = new Door(i);
        }

        Random random = new Random();

        int randomNumber = random.nextInt(amountOfDoors);
        knownDoorPrize = randomNumber;

        listOfDoors[randomNumber].setPrizeTrue();
    }

    public void checkDoors(){
        for(int i = 0; i < listOfDoors.length; i++){
            System.out.println("Door " + listOfDoors[i].getDoorNumber() + ": " + listOfDoors[i].getPrize());
        }
    }

    private void revealDoors(){
        if(knownDoorPrize == player.getChosenDoor()){
            lastDoor = listOfDoors[random.nextInt(amountOfDoors)];
            while (lastDoor.getDoorNumber() == player.getChosenDoor()){
                lastDoor = listOfDoors[random.nextInt(amountOfDoors)];
            }
        }
        else{
        lastDoor = listOfDoors[knownDoorPrize];
        }
    }

    public Door getLastDoor(){
        if(lastDoor == null){
            revealDoors();
        }
        return lastDoor;
    }

    public Door getPlayerSelection(){
        return listOfDoors[player.getChosenDoor()];
    }

    public int getKnownDoor(){
        return knownDoorPrize;
    }

    public boolean endGame(){
        Door chosenDoor;
        
        if(player.getSwitchStatus()){
            chosenDoor = getLastDoor();
        }
        else{
            chosenDoor = getPlayerSelection();
        }

        return chosenDoor.getPrize();
    }
}
