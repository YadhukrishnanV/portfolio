import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 290,
          width: 200,
          child: Image.asset(
            project.image,
            height: 290,
            width: 200,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 200,
          child: Text(
            project.title,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        // subtitle
        SizedBox(
          width: 200,
          child: Text(
            project.subtitle,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        ),
        // footer
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            width: 200,
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                if (project.iosLink != null)
                  InkWell(
                    onTap: () async {
                      if (await canLaunchUrl(Uri.parse(project.iosLink!))) {
                        await launchUrl(Uri.parse(project.iosLink!));
                      } else {
                        throw 'Could not launch ${project.iosLink}';
                      }
                    },
                    child: Image.asset(
                      "assets/ios_icon.png",
                      color: Colors.black,
                      width: 19,
                    ),
                  ),
                const SizedBox(
                  width: 14,
                ),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse(project.androidLink!))) {
                            await launchUrl(Uri.parse(project.androidLink!));
                          } else {
                            throw 'Could not launch ${project.androidLink}';
                          }
                        },
                      child: Image.asset(
                        "assets/android_icon.png",
                        color: Colors.black,
                        width: 17,
                      ),
                    ),
                  ),
                if (project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () async {
                        if (await canLaunchUrl(Uri.parse(project.webLink!))) {
                        await launchUrl(Uri.parse(project.webLink!));
                        } else {
                        throw 'Could not launch $project.webLink';
                        }
                      },
                      child: Image.asset(
                        "assets/web_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
