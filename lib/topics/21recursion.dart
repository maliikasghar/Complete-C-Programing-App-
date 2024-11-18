import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/text_components.dart';

class RecursionScreen extends StatelessWidget {
  const RecursionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recursion in C', style: TextComponents.pageTitle),
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
              'Recursion in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Body Text
            const Text(
              'Recursion in C occurs when a function calls itself in order to solve smaller instances of a problem. This technique is often used in problems like '
                  'factorial calculation, Fibonacci series, etc.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Syntax Header
            const Text(
              'Syntax:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),

            // Syntax Code
            const Text(
              'returnType functionName(parameters) {\n  // Base case\n  // Recursive case\n}',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Example Header
            const Text(
              'Example:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),

            // Example Code - Factorial function
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.codeBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'int factorial(int n) {\n  if (n <= 1) return 1;\n  return n * factorial(n - 1);\n}',
                style: TextComponents.bodyText,
              ),
            ),
            const SizedBox(height: 20.0),

            // Explanation Header
            const Text(
              'Explanation:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),

            // Explanation of the example
            const Text(
              'In this example, the factorial function is defined to calculate the factorial of a number. The base case checks if the number is less than or equal to 1, '
                  'in which case it returns 1. Otherwise, it recursively calls itself with the argument `n-1` and multiplies the result by `n` to calculate the factorial.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
