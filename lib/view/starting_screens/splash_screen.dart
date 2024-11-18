import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/text_components.dart';
import '../home_screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home screen after 3 seconds
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          // Centered Content (Logo, Title, and Description)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated Logo
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  builder: (context, double value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.scale(
                        scale: value,
                        child: Image.asset(
                          'lib/assets/icons/starting_icon/splash_icon.png',
                          height: 120,
                          width: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                // App Title
                Text(
                  'C Programming',
                  style: TextComponents.pageTitle.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                // Description with Tick Marks
                Column(
                  children: [
                    _buildFeatureRow('Easy to learn', Icons.check),
                    _buildFeatureRow('With examples', Icons.check),
                    _buildFeatureRow('Compiler & Quiz', Icons.check),
                  ],
                ),
              ],
            ),
          ),
          // Footer Text Positioned at the Bottom
          const Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Text(
              'Developed by:\nMr. Muhammad Asghar',
              style: TextComponents.footerText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  // Feature Row with White Check Icon
  Widget _buildFeatureRow(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white, // Check icon in white
            size: 24,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextComponents.bodyText.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
