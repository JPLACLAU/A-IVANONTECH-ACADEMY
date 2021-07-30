#include <iostream>

using namespace std;

int main()
{
  int number =0;

  cout << "Please input a number:" <<endl;
  cin >> number;

  if(number <10){
    cout << "Your number is LESS than 10!" <<endl;
  }
  else if(number >= 10 && number < 15){
    cout << "The number is greater of equal than 10 and below 15" <<endl;
  }
  else{
    cout << "The number is greater or equal to 15" <<endl;
  }

  return 0;
}
