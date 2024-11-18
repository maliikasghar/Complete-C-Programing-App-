import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import the constants file
import '../utils/text_components.dart'; // Import the text components file

class LoopsScreen extends StatelessWidget {
  const LoopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loops in C',
          style: TextComponents.pageTitle,
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Using constant primary color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title with constant styling
            const Text(
              'Loops in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction text with custom font size and constant color
            const Text(
              'Loops in C allow repeated execution of a code block as long as a specified condition is true. C provides different types of loops to meet various needs.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Bullet points for loop types with custom style
            const Text(
              'Types of Loops:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'For loop: Executes a set number of times.'),
            const BulletPoint(text: 'While loop: Executes as long as the condition remains true.'),
            const BulletPoint(text: 'Do-while loop: Similar to while loop but executes at least once.'),
            const BulletPoint(text: 'Nested loops: Loops within loops to manage multi-dimensional structures.'),
            const SizedBox(height: 20.0),

            // Example 1: For Loop
            const Text(
              'Example: For Loop',
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

int main() {
    for (int i = 1; i <= 5; i++) {
        printf("Iteration %d\\n", i);
    }
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

            // Example 2: While Loop
            const Text(
              'Example: While Loop',
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

int main() {
    int count = 1;

    while (count <= 5) {
        printf("Count: %d\\n", count);
        count++;
    }
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

            // Example 3: Do-While Loop
            const Text(
              'Example: Do-While Loop',
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

int main() {
    int count = 1;

    do {
        printf("Count: %d\\n", count);
        count++;
    } while (count <= 5);

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

            // Example 4: Nested Loops
            const Text(
              'Example: Nested Loops',
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

int main() {
    for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 2; j++) {
            printf("i = %d, j = %d\\n", i, j);
        }
    }
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

            // Footer text with consistent styling
            const Text(
              'Proper use of loops is essential for efficiently repeating tasks, iterating over arrays, or managing data structures like matrices.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
