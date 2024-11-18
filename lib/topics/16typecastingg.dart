import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import constants for colors and styles
import '../utils/text_components.dart'; // Import centralized text components

class TypecastingScreen extends StatelessWidget {
  const TypecastingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Typecasting in C',
          style: TextComponents.pageTitle, // Consistent AppBar title style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section title
              const Text(
                'Typecasting in C',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Introduction paragraph
              const Text(
                'Typecasting in C refers to the conversion of one data type to another. It can be done in two ways: implicit (automatic) and explicit (manual). '
                    'Implicit typecasting is done by the compiler, while explicit typecasting requires the programmer to specify the conversion.',
                style: TextComponents.bodyText,
              ),
              const SizedBox(height: 20.0),

              // Types of Typecasting section
              const Text(
                'Types of Typecasting:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: 'Implicit Typecasting: Automatic conversion from smaller to larger types.'),
              const BulletPoint(text: 'Explicit Typecasting: Manual conversion using typecast operators, e.g., (int), (float).'),
              const SizedBox(height: 20.0),

              // Example Section
              const Text(
                'Code Example:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                color: AppColors.codeBackground,
                child: const Text(
                  '''
#include <stdio.h>

int main() {
    // Implicit Typecasting: Automatic promotion from int to float
    int integerVar = 5;
    float floatVar = integerVar;  // Implicit conversion

    printf("Integer value: %d\\n", integerVar);
    printf("Converted float value: %.2f\\n", floatVar);

    // Explicit Typecasting: Manual conversion from float to int
    float number = 9.78;
    int convertedNumber = (int)number;  // Explicit conversion

    printf("Original float value: %.2f\\n", number);
    printf("Explicitly converted to int: %d\\n", convertedNumber);

    return 0;
}
                  ''',
                  style: TextStyle(
                    fontFamily: 'Courier',
                    fontSize: 14,
                    color: AppColors.codeTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),

              // Conclusion note
              const Text(
                'Typecasting is important to avoid unexpected behavior when working with different data types.',
                style: TextComponents.bodyText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
