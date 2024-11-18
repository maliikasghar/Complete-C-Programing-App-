import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/text_components.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  String? _answerMessage; // To display correct/incorrect message

  final List<Map<String, Object>> _questions = [
    {
      'question': 'Which of the following is a valid C variable name?',
      'answers': ['2variable', 'variable_name', 'variable-name', 'None of the above'],
      'correctAnswer': 'variable_name',
    },
    {
      'question': 'Which data type is used to store decimal numbers in C?',
      'answers': ['int', 'float', 'char', 'bool'],
      'correctAnswer': 'float',
    },
    {
      'question': 'Which function is used to print output in C?',
      'answers': ['printf()', 'print()', 'output()', 'write()'],
      'correctAnswer': 'printf()',
    },
    {
      'question': 'What is the output of `printf("%d", 7/2);`?',
      'answers': ['3.5', '3', '4', 'Error'],
      'correctAnswer': '3',
    },
    {
      'question': 'What is the correct syntax for a comment in C?',
      'answers': ['# Comment', '// Comment', '/* Comment */', 'Both // and /* */'],
      'correctAnswer': 'Both // and /* */',
    },
    {
      'question': 'Which of the following is NOT a loop in C?',
      'answers': ['for', 'while', 'loop', 'do-while'],
      'correctAnswer': 'loop',
    },
    {
      'question': 'Which keyword is used to return a value from a function?',
      'answers': ['exit', 'break', 'return', 'output'],
      'correctAnswer': 'return',
    },
    {
      'question': 'What is the default value of an uninitialized local variable in C?',
      'answers': ['0', 'Garbage value', 'NULL', 'Undefined'],
      'correctAnswer': 'Garbage value',
    },
    {
      'question': 'Which operator is used to access the value at the address of a pointer?',
      'answers': ['&', '*', '->', 'None of the above'],
      'correctAnswer': '*',
    },
    {
      'question': 'Which of the following is not a valid storage class in C?',
      'answers': ['auto', 'static', 'protected', 'register'],
      'correctAnswer': 'protected',
    },
    {
      'question': 'What is the correct format specifier for a character in C?',
      'answers': ['%d', '%c', '%s', '%f'],
      'correctAnswer': '%c',
    },
    {
      'question': 'Which of these functions can dynamically allocate memory?',
      'answers': ['malloc', 'calloc', 'realloc', 'All of the above'],
      'correctAnswer': 'All of the above',
    },
    {
      'question': 'What does `sizeof(int)` return?',
      'answers': ['Size of an int in bytes', 'Size of an int in bits', 'Undefined', 'Depends on the OS'],
      'correctAnswer': 'Size of an int in bytes',
    },
    {
      'question': 'Which of the following is used to read a single character from the user?',
      'answers': ['scanf', 'fgets', 'getchar', 'puts'],
      'correctAnswer': 'getchar',
    },
    {
      'question': 'What is the base address of an array?',
      'answers': ['Address of the first element', 'Address of the last element', 'Address of the entire array', 'None of the above'],
      'correctAnswer': 'Address of the first element',
    },
    {
      'question': 'What is the output of `int a=5; printf("%d", a++);`?',
      'answers': ['5', '6', 'Undefined', 'Error'],
      'correctAnswer': '5',
    },
    {
      'question': 'What is the role of the `break` statement in loops?',
      'answers': ['Skip one iteration', 'Exit the loop', 'Terminate the program', 'None of the above'],
      'correctAnswer': 'Exit the loop',
    },
    {
      'question': 'What is a pointer in C?',
      'answers': ['A variable storing address of another variable', 'A special type of array', 'A keyword', 'None of the above'],
      'correctAnswer': 'A variable storing address of another variable',
    },
    {
      'question': 'Which library function is used to find the length of a string?',
      'answers': ['strlen()', 'strlength()', 'size()', 'length()'],
      'correctAnswer': 'strlen()',
    },
    {
      'question': 'What is recursion in C?',
      'answers': ['Looping inside a function', 'Calling a function from another function', 'Function calling itself', 'None of the above'],
      'correctAnswer': 'Function calling itself',
    }
    // Add remaining 27 questions similarly
  ];


  void _answerQuestion(String answer) {
    setState(() {
      if (answer == _questions[_currentQuestionIndex]['correctAnswer']) {
        _answerMessage = 'Correct!';
      } else {
        _answerMessage = 'Incorrect!';
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _answerMessage = null; // Clear the message
      }
    });
  }

  void _previousQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        _answerMessage = null; // Clear the message
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextComponents.pageTitle,
        ),

        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Indicator
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Question ${_currentQuestionIndex + 1} of ${_questions.length}',
                style: TextComponents.bodyText,
              ),
            ),
            // Question Card
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  currentQuestion['question'] as String,
                  style: TextComponents.headingText.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Answer Buttons
            ...((currentQuestion['answers'] as List<String> )
                .map(
                  (answer) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(answer),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    answer,
                    style: TextComponents.subheading.copyWith(
                      color: AppColors.secondaryColor
                    ),
                  ),
                ),
              ),
            )
                .toList()),
            const SizedBox(height: 20),
            // Message Display
            if (_answerMessage != null)
              Center(
                child: Text(
                  _answerMessage!,
                  style: TextComponents.headingText.copyWith(
                    color: _answerMessage == 'Correct!'
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ),
            const Spacer(),
            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed:
                  _currentQuestionIndex > 0 ? _previousQuestion : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 20.0),
                  ),
                  child: const Text('Previous', style: TextComponents.buttonText,),
                ),
                ElevatedButton(
                  onPressed:
                  _currentQuestionIndex < _questions.length - 1
                      ? _nextQuestion
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 20.0),
                  ),
                  child: const Text('Next', style: TextComponents.buttonText,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
