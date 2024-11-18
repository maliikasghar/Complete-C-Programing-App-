import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // Import constants for colors and styles
import '../utils/text_components.dart'; // Import centralized text components

class BitwiseOperatorsScreen extends StatelessWidget {
  const BitwiseOperatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bitwise Operators in C',
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
            children: [
              // Screen Title
              Text(
                'Bitwise Operators in C',
                style: TextComponents.headingText.copyWith(
                  fontSize: 22.0,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 10.0),

              // Introduction
              Text(
                'Bitwise operators in C allow manipulation of individual bits in integers. These operators are commonly used for tasks like encryption, compression, and device control.',
                style: TextComponents.bodyText.copyWith(
                  fontSize: 16.0,
                  color: AppColors.bodyTextColor,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20.0),

              // Section: Common Bitwise Operators
              const Text(
                'Common Bitwise Operators:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              const BulletPoint(text: '`&` (AND): Sets each bit to 1 if both bits are 1.'),
              const BulletPoint(text: '`|` (OR): Sets each bit to 1 if one of the bits is 1.'),
              const BulletPoint(text: '`^` (XOR): Sets each bit to 1 if the bits are different.'),
              const BulletPoint(text: '`~` (NOT): Inverts all the bits.'),
              const BulletPoint(text: '`<<` (Left Shift): Shifts bits to the left, adding zeros at the right.'),
              const BulletPoint(text: '`>>` (Right Shift): Shifts bits to the right, discarding bits.'),
              const SizedBox(height: 10.0),

              // Section: Example
              const Text(
                'Example:',
                style: TextComponents.subheading,
              ),
              const SizedBox(height: 10.0),
              // Code example container with proper styling
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColors.codeBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  '''int a = 5, b = 3;
int result = a & b;  // Bitwise AND
result = a | b;  // Bitwise OR
result = a ^ b;  // Bitwise XOR
result = ~a;     // Bitwise NOT
result = a << 1; // Left Shift
result = a >> 1; // Right Shift''',
                  style: TextStyle(
                    fontFamily: 'Courier', // Using monospaced font for code
                    fontSize: 14.0,
                    color: AppColors.codeTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),

              // Conclusion (optional)
              Text(
                'Bitwise operators are powerful tools for low-level programming tasks such as bit manipulation and optimization.',
                style: TextComponents.bodyText.copyWith(
                  fontSize: 16.0,
                  color: AppColors.bodyTextColor,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
