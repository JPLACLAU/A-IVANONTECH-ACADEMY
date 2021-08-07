// All writing here was done for excercise and practicing.
// The excercises belong to Ivan on Tech Academy and other sources.
// www.learncpp.com and CodeBeauty are some of the other sources I used to learncpp

#include <iostream>

// preferred version
int main()
{
	std::cout << "Enter an integer: ";

	int num{ };
	std::cin >> num;

	std::cout << "Double that number is: " <<  num * 2 << '\n'; // use an expression to multiply num * 2 at the point where we are going to print it

	return 0;
}
