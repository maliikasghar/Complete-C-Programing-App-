import 'package:c_course/utils/text_components.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
// Custom widget for bullet points
class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.circle,
          size: 8.0,
          color: AppColors.primaryColor, // Styled bullet point icon
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            text,
            style: TextComponents.bodyText, // Consistent text style for points
          ),
        ),
      ],
    );
  }
}
