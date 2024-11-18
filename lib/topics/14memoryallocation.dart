import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import constants for styles and colors
import '../utils/text_components.dart'; // Import centralized text components

class MemoryAllocationScreen extends StatelessWidget {
  const MemoryAllocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Memory Allocation in C',
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
            children: <Widget>[
              // Section title
              const Text(
                'Memory Allocation in C',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Introduction paragraph
              const Text(
                'In C, memory allocation refers to the process of reserving memory during the execution of a program. C offers two types of memory allocation: '
                    'static (during compilation) and dynamic (during runtime). The `malloc()`, `calloc()`, `realloc()`, and `free()` functions are used for dynamic memory management.',
                style: TextComponents.bodyText,
              ),
              const SizedBox(height: 20.0),

              // Error Handling section
              const Text(
                'Error Handling:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: 'malloc(): Allocates a block of memory of a specified size.'),
              const BulletPoint(text: 'calloc(): Allocates memory for an array and initializes it to zero.'),
              const BulletPoint(text: 'realloc(): Changes the size of a previously allocated memory block.'),
              const BulletPoint(text: 'free(): Releases allocated memory back to the system.'),
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
#include <stdlib.h>

int main() {
    int *ptr;
    int n, i;

    printf("Enter number of elements: ");
    scanf("%d", &n);

    // Dynamic memory allocation using malloc
    ptr = (int *)malloc(n * sizeof(int));

    if (ptr == NULL) {
        printf("Memory allocation failed!\\n");
        return 1;
    }

    printf("Enter %d integers:\\n", n);
    for (i = 0; i < n; i++) {
        scanf("%d", &ptr[i]);
    }

    printf("You entered:\\n");
    for (i = 0; i < n; i++) {
        printf("%d ", ptr[i]);
    }

    // Free allocated memory
    free(ptr);

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

              // Additional note
              const Text(
                'Proper memory management is crucial to avoid memory leaks and ensure that the program runs efficiently.',
                style: TextComponents.bodyText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
