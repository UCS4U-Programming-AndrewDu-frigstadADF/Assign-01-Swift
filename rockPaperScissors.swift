 /**
 * play a game of rock, paper scissors against code
 * 
 * Author Andrew Du-frigstad
 * version 1
 * since 2022-03-24
 */

// declaring variables

func findResult(computerGuessFunc: String, userGuessFunc: String) -> String {

  var result = ""

  if (computerGuessFunc == userGuessFunc) {
    result = ("Tie!")
  }

  else if (computerGuessFunc == "scissors" && userGuessFunc == "rock") {
    result = ("You win!")
  }

    else if (computerGuessFunc == "rock" && userGuessFunc == "paper") {
    result = ("You win!")
  }

    else if (computerGuessFunc == "paper" && userGuessFunc == "scissors") {
    result = ("You win!")
  }
  
    else {
      result = ("You lose...")
  }
  return result
}
func main() {
  var userChoice = "yes"
  var userGuess = ""
  var computerGuess = ""
  
  // generate a number for the computer guess
  var computerNum = Int.random(in: 1...3)

  // while loop for the game
  while (userChoice == "yes") {

    // converting the random number to the computer's guess
    if (computerNum == 1) {
      computerGuess = ("rock")
    } else if (computerNum == 2) {
      computerGuess = ("paper")
    } else {
      computerGuess = ("scissors")
    }
  
    print("Choose either rock, paper or scissors")
    userGuess = readLine()!

    // while loop so the user inputs either rock, paper or scissors
    while (userGuess != ("rock") || userGuess != ("paper") || userGuess != ("scissors")) {
  
      if (userGuess == ("rock") || userGuess == ("paper") || userGuess == ("scissors")) {
        break
      }
      
      print("invalid input, Choose either rock, paper or scissors")
      let userGuess = readLine()!
    }
    print ("The computer guessed \(computerGuess)")
    print(findResult(computerGuessFunc: computerGuess, userGuessFunc: userGuess))

      print ("Do you want to play again?")
     userChoice = readLine()!

    // while loop to play again
    while (true) {
      if (userChoice != "yes" && userChoice != "no") {
        print ("That is not a valid input, try again") 
        
        // generate a number for the computer guess
        var computerNum = Int.random(in: 1...3)
    
        print("Do you want to play again?")
        userChoice = readLine()!

      } 
      else if (userChoice == "yes") {
        break
      }
      
      // end the game
      print("Thanks for playing!")
      break
    }
  }
}

main()