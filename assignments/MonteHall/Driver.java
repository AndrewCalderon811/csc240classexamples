package CourseWorkRespository.csc240classexamples.assignments.MonteHall;

public class Driver {
    public static void main(String[] args) {
        int counterWins = 0;
        int runs = 999999;
        int amountOfDoors = 150;

        for(int i = 0; i < runs; i++){
            
            Game game = new Game(amountOfDoors, 0, false);
            if(game.endGame()){
                counterWins++;
            }
        }

        System.out.println("No issues, Total wins: " + counterWins);
        System.out.println("Won " + (((float)counterWins/runs)*100) + "% of games");
    }
}
