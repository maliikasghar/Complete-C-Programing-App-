import 'package:flutter/material.dart';
import '../utils/bullet_point.dart'; // Custom bullet point widget
import '../utils/constants.dart'; // Centralized constants for styling
import '../utils/text_components.dart'; // Unified text styles

class StringsScreen extends StatelessWidget {
  const StringsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Strings in C',
          style: TextComponents.pageTitle, // AppBar title styling
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // AppBar background color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section title
            const Text(
              'Strings in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph
            const Text(
              'Strings in C are arrays of characters, terminated by a null character `\\0`. String manipulation is essential in text processing and file handling.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Key points about strings
            const Text(
              'Key Features:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Declaring strings: Arrays of characters.'),
            const BulletPoint(
                text: 'Common string functions: strlen(), strcpy(), strcat(), strcmp().'),
            const BulletPoint(
                text: 'String input/output: Using scanf() and printf().'),
            const SizedBox(height: 20.0),

            // Example: Declaring strings
            const Text(
              'Example: Declaring Strings',
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
    char str[20] = "Hello, World!";
    printf("String: %s\\n", str);
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

            // Example: Common string functions
            const Text(
              'Example: Common String Functions',
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
#include <string.h>

int main() {
    char str1[20] = "Hello";
    char str2[20] = "World";

    // Concatenation
    strcat(str1, str2);
    printf("Concatenated String: %s\\n", str1);

    // String length
    printf("Length: %lu\\n", strlen(str1));

    // String comparison
    printf("Comparison: %d\\n", strcmp(str1, str2));
    
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

            // Example: String input/output
            const Text(
              'Example: String Input/Output',
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
    char name[50];
    printf("Enter your name: ");
    scanf("%s", name);
    printf("Hello, %s!\\n", name);
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

            // Closing paragraph
            const Text(
              'Strings play a crucial role in handling text data and interacting with users through inputs and outputs. Mastery of strings opens up advanced text processing capabilities.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
