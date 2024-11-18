import 'package:flutter/material.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart';
import '../utils/text_components.dart';

class FileHandlingScreen extends StatelessWidget {
  const FileHandlingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'File Handling in C',
          style: TextComponents.pageTitle,
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            const Text(
              'File Handling in C',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10.0),

            // Introduction Paragraph
            const Text(
              'File handling in C allows reading and writing data to and from files, enabling data to persist even after the program terminates. '
                  'This is essential for applications that require data storage, retrieval, and manipulation. The `stdio.h` library provides functions for file operations.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // File Opening Modes Section
            const Text(
              'File Opening Modes:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: '`r`: Opens a file for reading. If the file does not exist, returns NULL.'),
            const BulletPoint(text: '`w`: Opens a file for writing. Creates a new file if none exists, or overwrites the existing file.'),
            const BulletPoint(text: '`a`: Opens a file for appending data. Creates a new file if none exists.'),
            const BulletPoint(text: '`r+`: Opens a file for both reading and writing.'),
            const BulletPoint(text: '`w+`: Opens a file for reading and writing, creating or overwriting the file if needed.'),
            const BulletPoint(text: '`a+`: Opens a file for reading and appending data.'),
            const SizedBox(height: 20.0),

            // Example: File Opening Modes
            const Text(
              'Example: Opening a File in Write Mode (`w`)',
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

int main() {
    FILE *file = fopen("example.txt", "w");
    if (file == NULL) {
        printf("Error opening file!");
        return 1;
    }
    fprintf(file, "Hello, File Handling in C!");
    fclose(file);
    return 0;
}
''',
                style: TextComponents.bodyText,
              ),
            ),
            const SizedBox(height: 20.0),

            // File Functions Section
            const Text(
              'File Functions:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const BulletPoint(text: 'fopen(): Opens a file in specified mode.'),
            const BulletPoint(text: 'fclose(): Closes an open file and frees any associated resources.'),
            const BulletPoint(text: 'fread() and fwrite(): Read and write blocks of data to and from files.'),
            const BulletPoint(text: 'fgetc() and fputc(): Read and write single characters to and from a file.'),
            const BulletPoint(text: 'fprintf() and fscanf(): Write and read formatted data to and from a file.'),
            const SizedBox(height: 20.0),

            // Example: Writing to a File with fprintf
            const Text(
              'Example: Writing Formatted Data to a File (`fprintf`)',
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

int main() {
    FILE *file = fopen("data.txt", "w");
    if (file == NULL) {
        printf("Error opening file!");
        return 1;
    }
    fprintf(file, "Name: %s\\nAge: %d\\n", "John Doe", 25);
    fclose(file);
    return 0;
}
''',
                style: TextComponents.bodyText,
              ),
            ),
            const SizedBox(height: 20.0),

            // Error Handling Section
            const Text(
              'Error Handling:',
              style: TextComponents.subheading,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'File handling errors (like trying to open a non-existent file) can occur frequently. Error-checking mechanisms, such as checking for NULL after fopen, '
                  'are essential for reliable file operations.',
              style: TextComponents.bodyText,
            ),
            const SizedBox(height: 20.0),

            // Example: Error Handling in File Operations
            const Text(
              'Example: Error Handling in File Operations',
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

int main() {
    FILE *file = fopen("nonexistent.txt", "r");
    if (file == NULL) {
        printf("Error: File not found!\\n");
        return 1;
    }
    fclose(file);
    return 0;
}
''',
                style: TextComponents.bodyText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
