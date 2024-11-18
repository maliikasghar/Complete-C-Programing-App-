import 'package:flutter/material.dart';
import 'package:c_course/utils/text_components.dart';
import '../utils/bullet_point.dart';
import '../utils/constants.dart';

class GraphicsInCScreen extends StatelessWidget {
  const GraphicsInCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graphics in C', style: TextComponents.pageTitle),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Graphics in C',
              style: TextComponents.headingText,
            ),
            SizedBox(height: 10.0),
            Text(
              'Graphics programming in C is often used for creating visual elements like shapes, animations, and UI elements. C provides graphics capabilities via libraries like graphics.h and external libraries for more advanced work.',
              style: TextComponents.bodyText,
            ),
            SizedBox(height: 20.0),
            BulletPoint(text: '2D shapes: Draw basic shapes such as circles, rectangles, and lines.'),
            BulletPoint(text: 'Pixels: Manipulate individual pixels to create custom images.'),
            BulletPoint(text: 'Animations: Sequential frames to create animations.'),
            BulletPoint(text: 'User interaction: Detect mouse clicks and keyboard inputs for interactive graphics.'),
            SizedBox(height: 20.0),
            Text(
              'Graphics programming enhances the visual appeal and interaction in C applications. It requires understanding of hardware and memory optimization, especially in low-level languages like C.',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
