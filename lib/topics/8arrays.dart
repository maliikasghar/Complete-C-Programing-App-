import 'package:flutter/material.dart'; // Navigation and Material components
import '../utils/bullet_point.dart'; // Custom bullet points widget
import '../utils/constants.dart'; // Constants for styling
import '../utils/text_components.dart'; // TextComponents for consistent text styles

class ArraysScreen extends StatelessWidget {
  const ArraysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arrays in C',
          style: TextComponents.pageTitle, // Consistent AppBar title style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor, // Primary color for AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section title
            const Text(
              'Arrays in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph
            const Text(
              'An array is a data structure that stores a collection of elements of the same type in contiguous memory locations. Arrays allow efficient data manipulation and storage in C.',
              style: TextComponents.bodyText, // Consistent body text style
            ),
            const SizedBox(height: 20.0),

            // Key points about arrays
            const Text(
              'Key Features:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'One-dimensional arrays: Linear collection of elements.'),
            const BulletPoint(text: 'Two-dimensional arrays: Often used for matrices and tables.'),
            const BulletPoint(text: 'Multi-dimensional arrays: Extends array storage across more dimensions.'),
            const SizedBox(height: 20.0),

            // Example 1: One-dimensional array
            const Text(
              'Example: One-Dimensional Array',
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
    int arr[5] = {10, 20, 30, 40, 50}; // Initialize array
    for (int i = 0; i < 5; i++) {
        printf("Element at index %d: %d\\n", i, arr[i]);
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

            // Example 2: Two-dimensional array
            const Text(
              'Example: Two-Dimensional Array',
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
    int matrix[2][3] = {{1, 2, 3}, {4, 5, 6}}; // Initialize 2D array
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            printf("Element at [%d][%d]: %d\\n", i, j, matrix[i][j]);
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

            // Example 3: Multi-dimensional array
            const Text(
              'Example: Multi-Dimensional Array',
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
    int tensor[2][2][2] = {{{1, 2}, {3, 4}}, {{5, 6}, {7, 8}}}; // 3D array
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            for (int k = 0; k < 2; k++) {
                printf("Element at [%d][%d][%d]: %d\\n", i, j, k, tensor[i][j][k]);
            }
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

            // Closing paragraph
            const Text(
              'Arrays simplify complex data handling and are essential for managing large collections of similar data efficiently.',
              style: TextComponents.bodyText, // Consistent body text style
            ),
          ],
        ),
      ),
    );
  }
}
