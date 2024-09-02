import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/urls.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          "Contact me : +91 8921272091",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // SNS icon button links
        Wrap(
          spacing: 20,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                if (await canLaunchUrl(Uri.parse(Urls.github))) {
                  await launchUrl(Uri.parse(Urls.github));
                } else {
                  throw 'Could not launch ${Urls.github}';
                }
              },
              child: Image.asset(
                "assets/github.png",
                color: Colors.black,
                width: 28,
              ),
            ),
            InkWell(
              onTap: () async {
                if (await canLaunchUrl(Uri.parse(Urls.linkedIn))) {
                  await launchUrl(Uri.parse(Urls.linkedIn));
                } else {
                  throw 'Could not launch ${Urls.linkedIn}';
                }
              },
              child: Image.asset(
                "assets/linkedin.png",
                width: 28,
                color: Colors.black,
              ),
            ),
            InkWell(
                onTap: () {
                  _launchEmail();
                },
                child: const Icon(Icons.mail, size: 30)),
          ],
        )
      ],
    );
  }

  void _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'yadhukrishnan84125@gmail.com',
    );

    try {
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        throw 'Could not launch $emailLaunchUri';
      }
    } catch (e) {
      debugPrint(e.toString()); // Handle the error
    }
  }
}
