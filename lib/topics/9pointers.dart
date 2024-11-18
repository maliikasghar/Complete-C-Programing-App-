import 'package:flutter/material.dart'; // Navigation and Material components
import '../utils/bullet_point.dart'; // Custom bullet points widget
import '../utils/constants.dart'; // Constants for styling
import '../utils/text_components.dart'; // TextComponents for unified text styles

class PointersScreen extends StatelessWidget {
  const PointersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pointers in C',
          style: TextComponents.pageTitle, // Consistent AppBar text style
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
              'Pointers in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph
            const Text(
              'A pointer is a variable that holds the memory address of another variable. Pointers are powerful tools in C, used for dynamic memory allocation, arrays, and functions.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Key features
            const Text(
              'Key Features:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Pointer basics: Declaring and initializing pointers.'),
            const BulletPoint(text: 'Pointer arithmetic: Operations on pointer values.'),
            const BulletPoint(text: 'Void pointers: Generic pointers without a type.'),
            const SizedBox(height: 20.0),

            // Example 1: Pointer basics
            const Text(
              'Example: Pointer Basics',
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
    int *ptr = &num; // Pointer to num
    printf("Value of num: %d\\n", num);
    printf("Address of num: %p\\n", &num);
    printf("Value at pointer ptr: %d\\n", *ptr);
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

            // Example 2: Pointer arithmetic
            const Text(
              'Example: Pointer Arithmetic',
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
    int arr[] = {10, 20, 30};
    int *ptr = arr; // Pointer to array
    for (int i = 0; i < 3; i++) {
        printf("Value at ptr[%d]: %d\\n", i, *(ptr + i));
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

            // Example 3: Void pointer
            const Text(
              'Example: Void Pointer',
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
    int num = 42;
    void *ptr = &num; // Void pointer
    printf("Value using void pointer: %d\\n", *(int *)ptr);
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
              'Pointers provide flexibility in managing memory and are foundational to dynamic memory management and data structures.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
