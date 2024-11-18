import 'package:flutter/material.dart';
import '../utils/bullet_point.dart'; // Custom bullet point widget
import '../utils/constants.dart'; // Centralized constants for styling
import '../utils/text_components.dart'; // Unified text styles

class StructuresAndUnionsScreen extends StatelessWidget {
  const StructuresAndUnionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Structures and Unions in C',
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
            // Section title
            const Text(
              'Structures and Unions in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction paragraph
            const Text(
              'Structures and unions in C are user-defined data types that allow grouping of multiple variables of different types under a single name. '
                  'While both serve to create complex data types, they differ in memory allocation.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Structures section
            const Text(
              'Structures:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'A structure is a collection of variables of different types, grouped under a single name. Each element is called a member.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Defined using the `struct` keyword followed by the structure name and members.'),
            const BulletPoint(text: 'Members are accessed using the dot operator (`.`).'),
            const BulletPoint(text: 'Structures can be nested (structures within structures).'),
            const SizedBox(height: 10.0),

            // Example: Structures
            const Text(
              'Example: Structures',
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

struct Student {
    int id;
    char name[50];
    float marks;
};

int main() {
    struct Student student1 = {1, "John Doe", 87.5};
    printf("ID: %d\\n", student1.id);
    printf("Name: %s\\n", student1.name);
    printf("Marks: %.2f\\n", student1.marks);
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

            // Unions section
            const Text(
              'Unions:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'A union is similar to a structure but uses shared memory for all members. Only one member can hold a value at a time.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Defined using the `union` keyword.'),
            const BulletPoint(text: 'Memory is shared; storing a value in one member overwrites other members.'),
            const BulletPoint(text: 'Useful for memory optimization when a variable holds different types.'),
            const SizedBox(height: 10.0),

            // Example: Unions
            const Text(
              'Example: Unions',
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

union Data {
    int i;
    float f;
    char str[20];
};

int main() {
    union Data data;
    data.i = 10;
    printf("Integer: %d\\n", data.i);
    data.f = 220.5;
    printf("Float: %.2f\\n", data.f);
    snprintf(data.str, 20, "Hello");
    printf("String: %s\\n", data.str);
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

            // Comparison of Structures and Unions
            const Text(
              'Comparison:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'Structures allocate separate memory for each member.'),
            const BulletPoint(text: 'Unions share memory among members, saving space.'),
            const BulletPoint(text: 'Use structures for unrelated data; use unions for mutually exclusive data.'),

            const SizedBox(height: 20.0),

            // Conclusion paragraph
            const Text(
              'Structures and unions are fundamental for data modeling in C, providing flexibility and efficiency. Understanding their differences helps in creating efficient programs.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
