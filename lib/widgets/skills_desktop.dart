import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // platforms
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 450,
            ),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                for (int i = 0; i < platformItems.length; i++)
                  Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffe8dce8),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          leading: Image.asset(
                            platformItems[i]["img"],
                            color: Colors.black,
                            width: 26.0,
                          ),
                          title: Text(
                            platformItems[i]["title"],
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          )))
              ],
            ),
          ),
          const SizedBox(width: 50),

          // skills
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  for (int i = 0; i < skillItems.length; i++)
                    Chip(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      backgroundColor: Color(0xffe8dce8),
                      label: Text(
                        skillItems[i]["title"],
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
