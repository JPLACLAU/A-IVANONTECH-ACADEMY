// All writing here was done for excercise and practicing.
// The excercises belong to Ivan on Tech Academy and other sources.

#include <iostream>

using namespace std;

int main()
{
  int numberOfAttempts = 0;
  int theNumberToGuess = 0 ;
  int currentGuess = 0;

  cout << "Welcome to the game!" <<endl <<endl;
  cout << "Player One: Please select a number:"<<endl;
  cin >> theNumberToGuess;

  while (true) {
    cout << "Player 2, please guess the number:"<<endl;
    cin >> currentGuess;

    if(currentGuess>theNumberToGuess) {
      cout<<"TOO HIGH! Guess lower!"<<endl;
    }
    else if(currentGuess<theNumberToGuess) {
      cout<<"TOO LOW! Guess higher!"<<endl;
    }
    else {
      cout<<"You guessed correctly! Congratulations!"<<endl;
      break;
    }

  }




  return 0;
}
