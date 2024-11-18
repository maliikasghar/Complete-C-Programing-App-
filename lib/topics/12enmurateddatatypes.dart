import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart'; // For styles and colors
import '../utils/text_components.dart'; // Centralized text components

class EnumeratedDataTypesScreen extends StatelessWidget {
  const EnumeratedDataTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enumerated Data Types in C',
          style: TextComponents.pageTitle, // Consistent AppBar title style
        ),
        iconTheme: IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section title
            Text(
              'Enumerated Data Types in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph
            Text(
              'Enumerated data types, or `enum`, are user-defined data types that consist of integral constants. They help to assign symbolic names to a set of values, '
                  'thereby enhancing code readability. Enumeration provides a way to work with sets of named integer constants that represent different values.',
              style: TextComponents.bodyText.copyWith(
                fontSize: 16.0,
                color: AppColors.bodyTextColor,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20.0),

            // How Enumerated Data Types Work section
            Text(
              'How Enumerated Data Types Work:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Use the `enum` keyword followed by the name of the enum and a list of constants.'),
            const BulletPoint(text: 'By default, the first constant has a value of 0, and each subsequent constant has an incremented integer value.'),
            const BulletPoint(text: 'Values can be explicitly assigned, making enums flexible for handling different values.'),
            const SizedBox(height: 20.0),

            // Advantages of Enumerated Data Types section
            Text(
              'Advantages of Enumerated Data Types:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            Text(
              'Enumerations improve code clarity and make it easier to work with sets of related values without having to remember specific integer values.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 10.0),
            Text(
              'They are especially useful in switch-case statements, providing a descriptive and intuitive approach for decision-making.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
