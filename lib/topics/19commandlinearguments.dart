import 'package:flutter/material.dart';
import '../utils/constants.dart'; // Import constants for colors and styles
import '../utils/text_components.dart'; // Import centralized text components

class CommandLineArgumentsScreen extends StatelessWidget {
  const CommandLineArgumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Command Line Arguments in C',
          style: TextComponents.pageTitle, // Consistent AppBar title style
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Command Line Arguments in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction
            const Text(
              'Command line arguments are inputs given to the program when it is executed. These arguments can be accessed using the parameters `argc` and `argv` in the `main` function. This allows the program to perform different tasks based on the arguments passed.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Syntax Section
            const Text(
              'Syntax:',
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
                'int main(int argc, char *argv[]) {\n  // Code\n}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Courier New',
                  color: AppColors.codeTextColor,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Where `argc` is the count of arguments passed, and `argv` is an array of strings containing the arguments.',
              style: TextComponents.bodyText,
            ),
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
                'int main(int argc, char *argv[]) {\n'
                    '  if (argc > 1) {\n'
                    '    printf("Argument: %s", argv[1]);\n'
                    '  }\n'
                    '  return 0;\n'
                    '}',
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
              'In the example, `argc` holds the number of arguments passed, and `argv` holds the actual arguments. The program prints the first argument passed, which is accessed using `argv[1]`.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
