import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import the constants file
import '../utils/text_components.dart'; // Import the text components file

class ControlStatementsScreen extends StatelessWidget {
  const ControlStatementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Control Statements in C',
          style: TextComponents.pageTitle, // Applying TextComponents style
        ),
        iconTheme: IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Using the constant color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title using the constant style
            const Text(
              'Control Statements in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph with a custom font size and color
            const Text(
              'Control statements in C are used to control the flow of execution. They allow you to make decisions and loop over sections of code based on certain conditions.',
              style: TextComponents.bodyText, // Applying bodyText style
            ),
            const SizedBox(height: 20.0),

            // Bullet points for different control statements
            const Text(
              'Types of Control Statements:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'If, else, else if'),
            const BulletPoint(text: 'Switch case'),
            const BulletPoint(text: 'Goto statement'),
            const BulletPoint(text: 'Break and continue'),

            const SizedBox(height: 20.0),

            // Example 1: If-Else Statement
            const Text(
              'Example: If-Else Statement',
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
    int num = 10;

    if (num > 0) {
        printf("The number is positive.\\n");
    } else {
        printf("The number is negative.\\n");
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

            // Example 2: Switch-Case Statement
            const Text(
              'Example: Switch-Case Statement',
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
    int day = 3;

    switch (day) {
        case 1:
            printf("Monday\\n");
            break;
        case 2:
            printf("Tuesday\\n");
            break;
        case 3:
            printf("Wednesday\\n");
            break;
        default:
            printf("Invalid day\\n");
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

            // Example 3: For Loop
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

            // Footer information with the constant style
            const Text(
              'Control statements are essential for creating logic in programs and controlling how and when different blocks of code are executed.',
              style: TextComponents.bodyText, // Applying bodyText style
            ),
          ],
        ),
      ),
    );
  }
}
