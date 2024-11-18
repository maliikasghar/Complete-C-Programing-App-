import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart';
import '../utils/text_components.dart'; // Import the text components file

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Introduction to C',
          style: TextComponents.pageTitle, // Applying TextComponents style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Using the constant color
      ),
      body: SingleChildScrollView( // Added for scrolling content
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title using the constant style
              const Text(
                'What is C Language?',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Introduction paragraph with a custom font size and color
              const Text(
                'C is a powerful general-purpose programming language developed in 1972 by Dennis Ritchie at AT&T Bell Labs. It has been used for system programming, developing embedded software, and is a key language in the field of operating systems development. C is known for its efficiency, performance, and simplicity.',
                style: TextComponents.bodyText, // Applying the bodyText style
              ),
              const SizedBox(height: 20.0),

              // Key Features Section using constant text styles
              const Text(
                'Key Features of C:',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: 'Simple and Efficient Syntax'),
              const BulletPoint(text: 'Structured Programming'),
              const BulletPoint(text: 'Low-level Access to Memory'),
              const BulletPoint(text: 'Portability and Flexibility'),
              const BulletPoint(text: 'Rich Library Support'),

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
    printf("Hello, World!\\n");
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
                'C is the foundation for many modern programming languages, such as C++, Java, and Python, and continues to be widely used in both academia and industry.',
                style: TextComponents.bodyText, // Applying the bodyText style
              ),
            ],
          ),
        ),
      ),
    );
  }
}
