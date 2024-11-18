import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class LessonScreen extends StatelessWidget {
  final String topic;

  LessonScreen({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Content about $topic...',
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
