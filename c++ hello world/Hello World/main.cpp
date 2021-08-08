// All writing here was done for excercise and practicing.
// The excercises belong to Ivan on Tech Academy and other sources.
// www.learncpp.com and CodeBeauty are some of the other sources I used to learncpp

#include <iostream>

int add(int x, int y); // needed so main.cpp knows that add() is a function declared elsewhere

int main()
{
    std::cout << "The sum of 3 and 4 is: " << add(3, 4) << '\n';
    return 0;
}
