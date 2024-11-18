import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import the constants file
import '../utils/text_components.dart'; // Import the text components file

class DataTypesScreen extends StatelessWidget {
  const DataTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Types in C',
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
              // Title using the constant style (no `const` here)
              const Text(
                'Data Types in C',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Introduction paragraph with a custom font size and color
              const Text(
                'Data types in C determine the type of data that can be stored and manipulated within a program. They are categorized into several types, such as integers, floating-point numbers, characters, and more.',
                style: TextComponents.bodyText, // Applying bodyText style
              ),
              const SizedBox(height: 20.0),

              // Key Features Section using constant text styles
              const Text(
                'Categories of Data Types:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: 'Primitive Data Types: int, char, float, double'),
              const BulletPoint(text: 'Derived Data Types: arrays, pointers, structures, unions'),
              const BulletPoint(text: 'Enumeration Types (enum)'),
              const BulletPoint(text: 'Void Type'),

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
    // Primitive Data Types
    int age = 25;
    float height = 5.9;
    char grade = 'A';

    // Derived Data Type - Array
    int numbers[3] = {10, 20, 30};

    // Printing data
    printf("Age: %d\\n", age);
    printf("Height: %.1f\\n", height);
    printf("Grade: %c\\n", grade);
    printf("Numbers: %d, %d, %d\\n", numbers[0], numbers[1], numbers[2]);

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
                'Each data type in C has a specific size and range. Understanding these types is crucial for efficient memory usage and proper data handling in C programming.',
                style: TextComponents.bodyText, // Applying bodyText style
              ),
            ],
          ),
        ),
      ),
    );
  }
}
