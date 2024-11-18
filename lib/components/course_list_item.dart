import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/text_components.dart';

class CourseListItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CourseListItem({super.key, required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(

        title: Text(title, style: TextComponents.courseListItem),
        trailing: const Icon(Icons.arrow_forward, color: AppColors.secondaryColor,),
        onTap: onTap,
      ),
    );
  }
}
