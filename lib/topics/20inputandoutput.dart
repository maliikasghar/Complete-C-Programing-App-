import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart';
import '../utils/text_components.dart';

class InputAndOutputScreen extends StatelessWidget {
  const InputAndOutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input and Output in C',
          style: TextComponents.pageTitle, // Consistent title styling
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            const Text(
              'Input and Output in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction Section
            const Text(
              'In C, the `stdio.h` library provides functions for input and output operations. The most common input and output functions are `printf()` for output and `scanf()` for input.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Input/Output Functions Section
            const Text(
              'Functions for Input and Output:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),

            // Function Bullet Points
            const BulletPoint(text: '`printf()`: Used to print output to the console.'),
            const BulletPoint(text: '`scanf()`: Used to take input from the user.'),
            const BulletPoint(text: '`getchar()`: Reads a single character from input.'),
            const BulletPoint(text: '`putchar()`: Outputs a single character.'),
            const SizedBox(height: 20.0),

            // Example Section
            const Text(
              'Example:',
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
                'int num;\nscanf("%d", &num);  // Reading input\nprintf("You entered: %d", num);  // Outputting result',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Courier New',
                  color: AppColors.codeTextColor,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Further Explanation (optional)
            const Text(
              'Explanation:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'In the example, we use `scanf()` to read an integer from the user and store it in the variable `num`. Then, `printf()` is used to output the value of `num` to the console.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
