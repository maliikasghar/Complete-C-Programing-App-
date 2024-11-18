import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/constants.dart';
import '../../utils/text_components.dart';

class ContactUs extends StatelessWidget {
  final String contactEmail = 'maliikasgharr@gmail.com';
  final String whatsappNumber = '+923419739125';

  const ContactUs({super.key});

  // Method to launch email client
  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: contactEmail,
      query: 'subject=Contact%20Support&body=Hello,',
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  // Method to open WhatsApp chat
  Future<void> _launchWhatsApp() async {
    final Uri whatsappUri = Uri.parse(
        'https://wa.me/$whatsappNumber?text=Hello,%20I%20would%20like%20to%20get%20in%20touch%20regarding%20your%20app.');

    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri);
    } else {
      throw 'Could not launch $whatsappUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextComponents.pageTitle,
        ),
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Get in Touch',
              style: TextComponents.headingText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'We’re always here to help! Whether you have questions, need support, or just want to say hello, feel free to reach out to us.',
              style: TextComponents.bodyText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(
                      Icons.email,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Email Us',
                      style: TextComponents.headingText,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      contactEmail,
                      style: TextComponents.bodyText.copyWith(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: _launchEmail,
                      icon: const Icon(Icons.email),
                      label: const Text('Send an Email'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(150, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 30,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'WhatsApp Us',
                      style: TextComponents.subheading.copyWith(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      whatsappNumber,
                      style: TextComponents.bodyText.copyWith(
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: _launchWhatsApp,
                      icon: const FaIcon(FontAwesomeIcons.whatsapp),
                      label: const Text('Message on WhatsApp'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(150, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
