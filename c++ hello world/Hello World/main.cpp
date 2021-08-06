// All writing here was done for excercise and practicing.
// The excercises belong to Ivan on Tech Academy and other sources.
// www.learncpp.com and CodeBeauty are some of the other sources I used to learncpp

#include <iostream>  // for std::cout and std::cin

int main()
{
    std::cout << "Enter a number: "; // ask user for a number

    int x{ }; // define variable x to hold user input (and zero-initialize it)
    std::cin >> x; // get number from keyboard and store it in variable x

    std::cout << "You entered " << x << '\n';
    return 0;
}
