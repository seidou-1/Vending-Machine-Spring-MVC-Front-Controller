/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Assignment_Basic_Programming_Concepts;

import java.util.Random;
import java.util.Scanner;

/**
 *
 * @author laptop
 */
public class RockPaperScissorsSandBox {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int userInput;
        int noOfRounds;
        Scanner myScanner = new Scanner(System.in);
        String continueOn = "";
        int computerWins = 0;
        int userWins = 0;
        int ties = 0;
        int rounds = 0;
        final int MIN_NUMBER = 1;
        final int MAX_NUMBER = 3;
        Random randomizer = new Random();
        String Rock = "(Rock)";
        String Paper = "(Paper)";
        String Scissors = "(Scissors)";
        int computerSelects;

 //***************************************
do {//This DO starts the game over if the number of rounds is met and the user wants to play again
        System.out.println("*******************************************");
        System.out.println("Let's play a game or Rock, Paper, Scissors.");
        System.out.println(" ");

        do { //This DO tells the user to try again if they pick a round thats more than 10 or pick 0
            System.out.println("");
            System.out.println("How many rounds do you want to play?");
            System.out.println("Pick between 1 and 10 rounds");

//        int noOfRounds;
//        noOfRounds = roundsScanner.nextInt();
            noOfRounds = myScanner.nextInt();

            if (noOfRounds >= 1 && noOfRounds <= 10) {
                System.out.println("");
                System.out.println("Ok great we'll play for  " + noOfRounds + " rounds!!");
                System.out.println("");

            } else {
                System.out.println("");
                System.out.println("Nope! can't play less than 1 round or more than 10 rounds");
                
            }

        } while (noOfRounds < 1 || noOfRounds > 10);

        //Put a while loop in here somewhere to ask the user to try again
//        do {
            do {//This DO allows the user to continue slecting R\P\S for each of the rounds (for how long they specified)
//while (continueOn.equalsIgnoreCase("y")){
            System.out.println("     Pick one of the following:");
            System.out.println("");
            System.out.println("  '1' for Rock               '2' for Paper");
            System.out.println("             '3' for Scissors");
            System.out.println("");

            System.out.println("What's your pick?");
            userInput = myScanner.nextInt();

//     public static String userStartsPlaying(String prompt) {
//        Scanner myScanner = new Scanner (System.in);
//        String userInput = "";
//        System.out.println(prompt);
//        userInput = myScanner.nextLine();
//            if (userInput == 1 || userInput == 2 || userInput == 3) { //number selected has to be between 1 and 3
//                System.out.println("Ok you picked: ");
        switch (userInput) {
            case 1:
                System.out.print("Ok you picked: " + userInput + "" + Rock);
                break;
//            } else {
//                System.out.println("Hey man pick either 1 for Rock, 2 for Paper, or 3 for Scissors!!!");
//            }
//        }
//            while (userInput <1 && userInput >3);
            case 2:
                System.out.print("Ok you picked: " + userInput + "" + Paper);
                break;
            case 3:
                System.out.print("Ok you picked: " + userInput + "" + Scissors);
                break;
            default:
                System.out.println("Hey man pick either 1 for Rock, 2 for Paper, or 3 for Scissors!!!");
                break;
        }

//        int computerWins = 0;
//        int userWins = 0;
//        int rounds = 0;
//        final int MIN_NUMBER = 1;
//        final int MAX_NUMBER = 3;
//        Random randomizer =new Random();
//        int computerSelects = (int)randomizer.nextInt((MAX_NUMBER - MIN_NUMBER) +1) + MIN_NUMBER;
//           do { 
                
                 
            computerSelects = randomizer.nextInt((MAX_NUMBER - MIN_NUMBER) + 1) + MIN_NUMBER;    
            
                System.out.println(" Ok my turn ");
                System.out.println("");
                System.out.print("I picked: ");
                
                switch (computerSelects) {
                    case 1:
                        System.out.print(computerSelects + "" + Rock);
                        break;
                    case 2:
                        System.out.print(computerSelects + "" + Paper);
                        break;
                    case 3:
                        System.out.print(computerSelects + "" + Scissors);
                        break;
                }
                System.out.println("");
               
                System.out.println(" Since you picked " + userInput + " and I picked " + computerSelects);
                switch (computerSelects) { //comparing from the computer
                        case 1: //if computer selects rock
                /*Rock*/ if (userInput == 2) { //if user picks paper
                            System.out.println(" Paper Wins.. You won ");
                            userWins++; 
                            } 
                        else {
                            System.out.println("  Wins.. I won ");
                            computerWins++;
                        }
                        break;

               /*Paper*/ case 2: //if computer selects paper
                        if (userInput == 3) { //if user picks scissors
                            System.out.println(" Scissors Wins.. You won ");
                            userWins++;
                        
                        } else {
                            System.out.println("  .. I won "); //if user picks rock
                            computerWins++;
                        }
                        break;
              /*Scissors*/
                        case 3:
                        if (userInput == 1) { //if user picks rock
                            System.out.println(" Rock wins.. You won ");
                            System.out.println("");
                            userWins++;

                        } else {
                            System.out.println("  won.. I won ");
                            System.out.println("");
                            computerWins++;
                        }
                         break;
                        
                        default:
                        System.out.println(" It's a draw! Go again ");
                            System.out.println("");
                        ties++;
  
                    }
                    rounds++;
                    System.out.println("Round" + (rounds+1) + ":");
                    System.out.println("");
                
                } while (noOfRounds != rounds);
                
            
                System.out.println(" So far we've played " + rounds + " rounds");
                System.out.println(" Would you lke to continue?");
                System.out.println("");
//                        Scanner roundsContinue = new Scanner(System.in); 
                continueOn = myScanner.next();

                switch (continueOn) {
                    case "y":
                        System.out.println(" Great we'll continue on ");
                        break;

                    case "n":
                        System.out.println(" Alright we'll end here ");
                        break;
                    default:
                        System.out.println(" Please select 'y' for Yes or 'n' for No");
                }
                
        } while (continueOn.equalsIgnoreCase("y"));
        
 
    
//              } while (rounds <= noOfRounds || continueOn.equalsIgnoreCase("y"));

            System.out.println(" Here are the scores: ");
            System.out.println(" Number of Rounds played: " + rounds);
            System.out.println(" Your Wins: " + userWins);
            System.out.println(" Computer Wins: " + computerWins);
            System.out.println(" Ties: " + ties);

            //Another while loop here
//        return finalUserInput;
        }                          
    
    }

