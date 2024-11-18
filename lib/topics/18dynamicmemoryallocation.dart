import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import constants for colors and styles
import '../utils/text_components.dart'; // Import centralized text components

class DynamicMemoryAllocationScreen extends StatelessWidget {
  const DynamicMemoryAllocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dynamic Memory Allocation in C',
          style: TextComponents.pageTitle, // Consistent AppBar title style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Screen Title
              Text(
                'Dynamic Memory Allocation in C',
                style: TextComponents.headingText,
              ),
              SizedBox(height: 10.0),

              // Introduction
              Text(
                'Dynamic memory allocation in C involves allocating memory at runtime using the heap. This allows you to create flexible data structures such as arrays and lists that can grow and shrink dynamically.',
                style: TextComponents.bodyText,
              ),
              SizedBox(height: 20.0),

              // Section: Common Functions
              Text(
                'Common Functions for Dynamic Memory Allocation:',
                style: TextComponents.subheading,
              ),
              SizedBox(height: 10.0),
              BulletPoint(text: '`malloc()`: Allocates memory of a specified size and returns a pointer.'),
              BulletPoint(text: '`calloc()`: Allocates memory for an array of elements and initializes them to zero.'),
              BulletPoint(text: '`realloc()`: Resizes a previously allocated memory block to a new size.'),
              BulletPoint(text: '`free()`: Frees allocated memory to prevent memory leaks.'),
              SizedBox(height: 10.0),

              // Section: Important Points
              Text(
                'Important Points:',
                style: TextComponents.subheading,
              ),
              SizedBox(height: 10.0),
              Text(
                'You must always release dynamically allocated memory using `free()` to prevent memory leaks. Failing to do so can lead to performance issues, especially in large applications or long-running programs.',
                style: TextComponents.bodyText,
              ),
              SizedBox(height: 10.0),

              // Additional Tips (optional)
              Text(
                'Tips for Efficient Memory Management:',
                style: TextComponents.subheading,
              ),
              SizedBox(height: 10.0),
              BulletPoint(text: 'Always check if memory allocation was successful (e.g., by verifying if the pointer is NULL).'),
              BulletPoint(text: 'Use `realloc()` cautiously, as it may move the memory block to a different location.'),
              BulletPoint(text: 'Free memory only after it is no longer needed, and avoid using pointers after they are freed.'),
            ],
          ),
        ),
      ),
    );
  }
}
