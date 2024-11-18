import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/text_components.dart';

class CCompilerScreen extends StatefulWidget {
  const CCompilerScreen({super.key});

  @override
  _CCompilerScreenState createState() => _CCompilerScreenState();
}

class _CCompilerScreenState extends State<CCompilerScreen> {
  final TextEditingController _codeController = TextEditingController();

  // Simulate code compilation and execution
  String _compileAndRunCode(String code) {
    // Check if the code is empty
    if (code.trim().isEmpty) {
      return 'Error: Code cannot be empty.';
    }

    // Simulate the output for a "Hello, World!" program
    if (code.contains('printf("Hello, World!")')) {
      return 'Output:\nHello, World!';
    }

    // Check if the code contains `printf` but no content
    if (code.contains('printf')) {
      return 'Output:\nCode executed successfully!';
    }

    // Check for basic syntax issues (unclosed curly braces)
    if (code.contains('{') && !code.contains('}')) {
      return 'Error: Missing closing brace "}".';
    }

    // Check if the code contains `printf` without a semicolon
    if (code.contains('printf') && !code.contains(';')) {
      return 'Error: Missing semicolon at the end of printf statement.';
    }

    // Handle cases where the code does not contain anything recognizable
    return 'Error: Invalid code.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'C Language Compiler',
          style: TextComponents.pageTitle,
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter your C code below:',
              style: TextComponents.headingText,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TextField(
                controller: _codeController,
                maxLines: null,
                expands: true,
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  hintText: '// Type your C code here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String code = _codeController.text;
                  String output = _compileAndRunCode(code);
                  _showOutputDialog(context, output);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Run Code',
                  style: TextComponents.buttonText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showOutputDialog(BuildContext context, String output) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Output'),
          content: Text(output),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
