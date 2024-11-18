import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import constants for styles and colors
import '../utils/text_components.dart'; // Import centralized text components

class PreprocessorsAndMacrosScreen extends StatelessWidget {
  const PreprocessorsAndMacrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Preprocessors and Macros in C',
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
                'Preprocessors and Macros in C',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Introduction paragraph
              const Text(
                'The C preprocessor is used to perform tasks before the actual compilation of the program starts. It handles macros, file inclusion, '
                    'conditional compilation, and more. Macros in C are used to define constant values or functions that are replaced during preprocessing.',
                style: TextComponents.bodyText,
              ),
              const SizedBox(height: 20.0),

              // Key points section
              const Text(
                'Key Features:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: '#define: Defines a macro constant or function.'),
              const BulletPoint(text: '#include: Includes header files into the program.'),
              const BulletPoint(text: '#ifdef, #ifndef: Used for conditional compilation.'),
              const BulletPoint(text: '#if, #else, #elif: For conditional processing based on specific conditions.'),
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
#define PI 3.14159 // Macro constant
#define AREA_OF_CIRCLE(r) (PI * (r) * (r)) // Macro function

int main() {
    float radius = 5.0;

    printf("Radius of the circle: %.2f\\n", radius);
    printf("Area of the circle: %.2f\\n", AREA_OF_CIRCLE(radius));

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
                'Using preprocessor directives effectively can help in writing more efficient, portable, and maintainable code.',
                style: TextComponents.bodyText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
