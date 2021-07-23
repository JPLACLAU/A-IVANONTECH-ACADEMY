#include <iostream>

using namespace std;

void printHello() {
  // local variable
  string helloString = "hello!";
  cout << helloString;
}

void test() {
  int a = 0;
  cout << "test "<< a;
}

int main()
{
  printHello() ;
  test() ;
  return 0;
}
