import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import constants for styling
import '../utils/text_components.dart'; // Import text components for consistent text styles

class FunctionsScreen extends StatelessWidget {
  const FunctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Functions in C',
          style: TextComponents.pageTitle, // Consistent AppBar title style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Using primary color from constants
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title for the section
            const Text(
              'Functions in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph
            const Text(
              'Functions in C allow modularization of code. They encapsulate logic, making code reusable and easier to maintain.',
              style: TextComponents.bodyText, // Consistent body text style
            ),
            const SizedBox(height: 20.0),

            // Key points about functions
            const Text(
              'Key Features:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'User-defined functions: Custom functions for specific tasks.'),
            const BulletPoint(text: 'Standard library functions: Predefined functions like printf(), scanf().'),
            const BulletPoint(text: 'Recursive functions: Functions that call themselves.'),
            const BulletPoint(text: 'Passing arguments by value and by reference.'),
            const SizedBox(height: 20.0),

            // Example 1: User-defined function
            const Text(
              'Example: User-defined Function',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.codeBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                '''
#include <stdio.h>

// Function declaration
int addNumbers(int a, int b);

int main() {
    int result = addNumbers(5, 7);
    printf("Sum: %d\\n", result);
    return 0;
}

// Function definition
int addNumbers(int a, int b) {
    return a + b;
}
                ''',
                style: TextStyle(
                  fontFamily: 'Courier', // Monospace font for code
                  fontSize: 14.0,
                  color: AppColors.codeTextColor,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Example 2: Recursive function
            const Text(
              'Example: Recursive Function',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.codeBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                '''
#include <stdio.h>

// Recursive function to calculate factorial
int factorial(int n);

int main() {
    int number = 5;
    printf("Factorial of %d is %d\\n", number, factorial(number));
    return 0;
}

int factorial(int n) {
    if (n == 0) {
        return 1;
    }
    return n * factorial(n - 1);
}
                ''',
                style: TextStyle(
                  fontFamily: 'Courier', // Monospace font for code
                  fontSize: 14.0,
                  color: AppColors.codeTextColor,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Example 3: Passing arguments
            const Text(
              'Example: Passing Arguments by Reference',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.codeBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                '''
#include <stdio.h>

// Function to swap two numbers
void swap(int *x, int *y);

int main() {
    int a = 5, b = 10;
    printf("Before Swap: a = %d, b = %d\\n", a, b);
    swap(&a, &b);
    printf("After Swap: a = %d, b = %d\\n", a, b);
    return 0;
}

void swap(int *x, int *y) {
    int temp = *x;
    *x = *y;
    *y = temp;
}
                ''',
                style: TextStyle(
                  fontFamily: 'Courier', // Monospace font for code
                  fontSize: 14.0,
                  color: AppColors.codeTextColor,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Conclusion paragraph
            const Text(
              'Using functions properly allows for code modularity, making programs easier to test, debug, and scale.',
              style: TextComponents.bodyText, // Consistent body text style
            ),
          ],
        ),
      ),
    );
  }
}
