import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart';
import '../utils/text_components.dart';

class ErrorHandlingScreen extends StatelessWidget {
  const ErrorHandlingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Handling in C', style: TextComponents.pageTitle),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Error Handling in C',
                style: TextComponents.headingText,
              ),
              const SizedBox(height: 10.0),

              // Description
              const Text(
                'Error handling in C is crucial for making programs reliable and robust. Unlike languages with built-in exception handling (e.g., Java\'s try-catch), '
                    'C uses alternative methods to manage errors, especially runtime errors.',
                style: TextComponents.bodyText,
              ),
              const SizedBox(height: 20.0),

              // Section Title
              const Text(
                'Common Techniques for Error Handling in C:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),

              // Bullet Points
              const BulletPoint(
                text: '`errno`: A global variable set to an error code by system calls and some library functions. It helps identify specific errors after a function fails.',
              ),
              const BulletPoint(
                text: '`perror()`: Prints a descriptive error message to `stderr` based on the current value of `errno`. Useful for providing immediate feedback on errors.',
              ),
              const BulletPoint(
                text: '`strerror()`: Converts the error code in `errno` to a human-readable string, which can be used in custom error messages.',
              ),
              const BulletPoint(
                text: '`assert()`: A macro defined in `assert.h` that tests conditions and aborts the program if the condition is false. It is mainly used for debugging.',
              ),
              const BulletPoint(
                text: '`exit()`: Terminates the program with a specified exit status, often used to stop execution when an unrecoverable error occurs.',
              ),
              const SizedBox(height: 20.0),

              // Example Header
              const Text(
                'Using `errno` and `perror()` Example:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColors.codeBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  '''
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main() {
    FILE *file = fopen("nonexistent.txt", "r");
    if (file == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }
    fclose(file);
    return EXIT_SUCCESS;
}
                  ''',
                  style: TextComponents.bodyText,
                ),
              ),
              const SizedBox(height: 20.0),

              // Explanation
              const Text(
                'Explanation:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'In this example, `fopen()` attempts to open a file. If the file doesn\'t exist, `fopen()` returns `NULL`, setting `errno` to an error code. '
                    '`perror()` then displays an error message based on `errno`, making it easy to diagnose the issue.',
                style: TextComponents.bodyText,
              ),
              const SizedBox(height: 20.0),

              // Second Example Header
              const Text(
                'Using `assert()` Example:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColors.codeBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  '''
#include <assert.h>
#include <stdio.h>

int main() {
    int value = 5;
    assert(value != 5 && "Value should not be 5!");
    printf("This will not print if value is 5.");
    return 0;
}
                  ''',
                  style: TextComponents.bodyText,
                ),
              ),
              const SizedBox(height: 20.0),

              // Explanation
              const Text(
                'Explanation:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Here, `assert()` checks if `value` is not equal to 5. If `value` equals 5, the program will terminate and display the assertion message: "Value should not be 5!". '
                    '`assert()` is especially useful during debugging to ensure certain conditions are met.',
                style: TextComponents.bodyText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
