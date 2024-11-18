import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import the constants file
import '../utils/text_components.dart'; // Import the text components file

class VariablesAndConstantsScreen extends StatelessWidget {
  const VariablesAndConstantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Variables and Constants in C',
          style: TextComponents.pageTitle, // Applying TextComponents style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Using the constant color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title using the constant style
              const Text(
                'Variables and Constants in C',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Introduction paragraph with a custom font size and color
              const Text(
                'In C programming, variables are used to store data values. Constants are values that cannot be altered after being initialized.',
                style: TextComponents.bodyText, // Applying bodyText style
              ),
              const SizedBox(height: 20.0),

              // Key Features Section using constant text styles
              const Text(
                'Types of Variables and Constants in C:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: 'Variables: Used to store data that can change during program execution'),
              const BulletPoint(text: 'Constants: Values that do not change once initialized (using `#define` or `const`)'),
              const BulletPoint(text: 'Global Variables: Declared outside all functions and accessible from any function'),
              const BulletPoint(text: 'Local Variables: Declared within a function and only accessible within that function'),
              const BulletPoint(text: 'Static Variables: Retain their value between function calls'),
              const BulletPoint(text: 'Constant Variables: Declared with the `const` keyword and cannot be modified after initialization'),

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

// Global variable
int globalVar = 10;

void demonstrateStatic() {
    // Static variable
    static int staticVar = 0;
    staticVar++;
    printf("Static Variable Value: %d\\n", staticVar);
}

int main() {
    // Local variable
    int localVar = 5;

    // Constant using const keyword
    const float pi = 3.14;

    // Constant using #define
    #define MAX 100

    printf("Global Variable: %d\\n", globalVar);
    printf("Local Variable: %d\\n", localVar);
    printf("Constant (const): %.2f\\n", pi);
    printf("Constant (#define): %d\\n", MAX);

    // Demonstrate static variable behavior
    demonstrateStatic();
    demonstrateStatic();
    demonstrateStatic();

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
                'Proper use of variables and constants is essential for efficient and predictable C programming. Understanding their scope and lifetime can help optimize the code.',
                style: TextComponents.bodyText, // Applying bodyText style
              ),
            ],
          ),
        ),
      ),
    );
  }
}
