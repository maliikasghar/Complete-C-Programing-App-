import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import the constants file
import '../utils/text_components.dart'; // Import the text components file

class OperatorsInCScreen extends StatelessWidget {
  const OperatorsInCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Operators in C',
          style: TextComponents.pageTitle, // Applying TextComponents style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Using the constant color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title using the constant style
            const Text(
              'Operators in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph with a custom font size and color
            const Text(
              'Operators in C are symbols that perform operations on variables and values. C supports several types of operators including arithmetic, logical, relational, and bitwise operators.',
              style: TextComponents.bodyText, // Applying bodyText style
            ),
            const SizedBox(height: 20.0),

            // Key Features Section using constant text styles
            const Text(
              'Types of Operators in C:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Arithmetic Operators: +, -, *, /, %'),
            const BulletPoint(text: 'Relational Operators: ==, !=, >, <, >=, <='),
            const BulletPoint(text: 'Logical Operators: &&, ||, !'),
            const BulletPoint(text: 'Bitwise Operators: &, |, ^, ~, <<, >>'),
            const BulletPoint(text: 'Assignment Operators: =, +=, -=, *=, /='),
            const BulletPoint(text: 'Increment and Decrement Operators: ++, --'),
            const BulletPoint(text: 'Conditional (Ternary) Operator: ? :'),
            const BulletPoint(text: 'Comma Operator: ,'),

            const SizedBox(height: 20.0),
            const Text(
              'Example Program:',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Code example using a styled container
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.codeBackground, // Background for the code block
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                '''
#include <stdio.h>

int main() {
    int a = 10, b = 20, c;

    // Arithmetic Operators
    c = a + b;
    printf("Sum: %d\\n", c);
    
    // Relational Operators
    printf("a > b: %d\\n", a > b);

    // Logical Operators
    printf("a < b && b > 15: %d\\n", a < b && b > 15);

    // Bitwise Operators
    printf("Bitwise AND of a & b: %d\\n", a & b);

    // Assignment Operators
    c += a;
    printf("Updated c after +=: %d\\n", c);

    // Increment and Decrement Operators
    printf("Increment a: %d\\n", ++a);
    printf("Decrement b: %d\\n", --b);

    // Conditional Operator
    int max = (a > b) ? a : b;
    printf("Max: %d\\n", max);

    return 0;
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
            const Text(
              'Operators play a crucial role in C programming, enabling you to manipulate data in various ways. Proper understanding of each operator type is essential for writing efficient code.',
              style: TextComponents.bodyText, // Applying bodyText style
            ),
          ],
        ),
      ),
    );
  }
}
