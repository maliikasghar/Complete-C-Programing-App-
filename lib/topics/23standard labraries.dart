import 'package:flutter/material.dart';
import 'package:c_course/utils/text_components.dart';
import '../utils/constants.dart';

class StandardLibrariesScreen extends StatelessWidget {
  const StandardLibrariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard Libraries in C',
            style: TextComponents.pageTitle),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Standard Libraries in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'The C Standard Library provides a collection of built-in functions and macros for handling common operations such as input/output, memory management, '
                  'string manipulation, and mathematical computations. Key libraries include <stdio.h>, <stdlib.h>, <string.h>, <math.h>, and <time.h>.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),
            _buildLibrarySection(
              '<stdio.h>',
              'Provides functions for input and output, such as printf() for output and scanf() for input.',
            ),
            _buildLibrarySection(
              '<stdlib.h>',
              'Includes functions for memory management (malloc(), free()), random number generation (rand()), and process control (exit()).',
            ),
            _buildLibrarySection(
              '<string.h>',
              'Provides functions for string manipulation, including strcpy(), strcat(), strlen(), and strcmp().',
            ),
            _buildLibrarySection(
              '<math.h>',
              'Offers mathematical functions, including sqrt(), pow(), sin(), cos(), and many others.',
            ),
            _buildLibrarySection(
              '<time.h>',
              'Includes functions to handle and manipulate date and time, such as time(), clock(), and localtime().',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLibrarySection(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextComponents.subheading,
        ),
        const SizedBox(height: 5.0),
        Text(
          description,
          style: TextComponents.bodyText,
        ),
        const SizedBox(height: 10.0),
        const Divider(height: 20.0, color: Colors.grey),
      ],
    );
  }
}
