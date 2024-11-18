import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/text_components.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextComponents.pageTitle,
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'About Us',
              style: TextComponents.headingText,
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to the C Programming Learning App! Our mission is to empower students, educators, and programming enthusiasts by providing a robust, offline platform to master the fundamentals and advanced concepts of C programming. This application is designed to cater to a diverse audience, from beginners to experienced developers seeking to refresh their knowledge.',
              style: TextComponents.bodyText,
            ),
            SizedBox(height: 16),
            Text(
              'What Makes This App Unique?',
              style: TextComponents.headingText,
            ),
            SizedBox(height: 8),
            Text(
              '- Comprehensive coverage of C programming topics, presented in an easy-to-follow format.\n'
                  '- A professional and intuitive user interface for enhanced learning experiences.\n'
                  '- Offline access, ensuring learning is possible anytime, anywhere.\n'
                  '- Built-in C compiler for hands-on coding and practice within the app.\n'
                  '- Practical examples, detailed lessons, and a user-friendly navigation system.',
              style: TextComponents.bodyText,
            ),
            SizedBox(height: 24),
            Text(
              'Our Vision',
              style: TextComponents.headingText,
            ),
            SizedBox(height: 8),
            Text(
              'We aspire to bridge the gap between learning and application by making programming education accessible and engaging for everyone. By integrating interactive features and a compiler, we aim to transform traditional learning into a dynamic, hands-on experience.',
              style: TextComponents.bodyText,
            ),
            SizedBox(height: 24),
            Text(
              'Developed By:',
              style: TextComponents.headingText,
            ),
            SizedBox(height: 8),
            Text(
              'Mr. Muhammad Asghar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'For inquiries, suggestions, or collaboration opportunities, feel free to reach out via the Contact Us page or connect with us through social media links provided in the app.',
              style: TextComponents.bodyText,
            ),
            SizedBox(height: 24),
            Text(
              'Thank you for choosing our app to advance your programming journey. Happy Coding!',
              style: TextComponents.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
