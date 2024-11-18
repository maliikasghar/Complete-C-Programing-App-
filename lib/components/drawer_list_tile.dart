import 'package:flutter/material.dart';
import '../utils/constants.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  DrawerListTile({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color:  AppColors.bodyTextColor),
      title: Text(title, style: const TextStyle ( color : AppColors.bodyTextColor)),
      onTap: onTap,
    );
  }
}
