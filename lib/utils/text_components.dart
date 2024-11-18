import 'package:flutter/material.dart';
import 'constants.dart';  // Assuming AppColors is defined here

class TextComponents {
  // Secondary Heading (Page Titles)
  static const TextStyle pageTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.secondaryColor,
  );

  // Subtitles (Smaller Headings)
  static const TextStyle subheading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  // Body Text (Paragraphs)
  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    height: 1.5, // Increased height for better readability
    color: AppColors.bodyTextColor,
  );

  // Button Text (Call-to-Action Buttons)
  static const TextStyle buttonText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor, // Assumes buttons have contrasting background
  );
  // Footer Text (Small Details in Footers)
  static const TextStyle footerText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.footerTextColor,

  );

  // Topic Subtext (Details Below Titles)
  static const TextStyle subText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.bodyTextColor, // Faded color
  );
  static const TextStyle courseListItem = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor, // Faded color
  );

  static const TextStyle splashText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color : AppColors.secondaryColor,
    fontFamily: 'Gabriola',// Faded color
  );

  static const TextStyle headingText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color : AppColors.primaryColor,

  );
}
