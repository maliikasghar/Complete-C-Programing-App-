import 'package:flutter/material.dart';
import 'package:c_course/utils/constants.dart';
import '../../utils/text_components.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        elevation: 0,
        title: const Text(
          'Terms and Conditions',
          style: TextComponents.pageTitle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Terms and Conditions',
                      style: TextComponents.headingText,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Welcome to our application. By using our app, you agree to the following terms and conditions. Please read them carefully.',
                      style: TextComponents.bodyText,
                    ),
                    const SizedBox(height: 20),
                    _buildSectionTitle('1. Acceptance of Terms'),
                    _buildSectionContent(
                      'By accessing and using this app, you accept and agree to be bound by the terms and conditions of this agreement. In addition, when using this app’s particular services, you shall be subject to any posted guidelines or rules applicable to such services.',
                    ),
                    const SizedBox(height: 10),
                    _buildSectionTitle('2. User Responsibilities'),
                    _buildSectionContent(
                      'You agree to use the app for lawful purposes only and agree not to take any action that might compromise the security of the app, render the app inaccessible to others, or otherwise cause damage to the app or its content.',
                    ),
                    const SizedBox(height: 10),
                    _buildSectionTitle('3. Modifications to Terms'),
                    _buildSectionContent(
                      'We reserve the right to modify these terms at any time. Your continued use of the app following any changes will mean you accept those changes.',
                    ),
                    const SizedBox(height: 10),
                    _buildSectionTitle('4. Limitation of Liability'),
                    _buildSectionContent(
                      'Our liability is limited to the maximum extent permitted by law. We shall not be liable for any indirect, incidental, or consequential damages.',
                    ),
                    const SizedBox(height: 10),
                    _buildSectionTitle('5. Contact Us'),
                    _buildSectionContent(
                      'If you have any questions about these Terms, please contact us at maliikasgharr@gmail.com or WhatsApp: +923419739125.',
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildAgreeButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextComponents.headingText,
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextComponents.bodyText,
    );
  }

  Widget _buildAgreeButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Logic for agreeing to the terms can be added here
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: const Text(
          'Agree',
          style: TextComponents.buttonText,
        ),
      ),
    );
  }
}
