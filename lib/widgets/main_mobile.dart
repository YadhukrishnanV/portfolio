import 'dart:html' as html; // Only for web
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.onNavMenuTap,
  });

  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              "assets/Profile_photo-modified.png",
              fit: BoxFit.cover,
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            "Hello, I'm",
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 30, height: 1.5, color: Colors.black87),
            ),
          ),
          Text(
            "Yadhukrishnan V",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 30,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Flutter Developer",
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 30, height: 1.5, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            children: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    _downloadCV();
                  },
                  child: Text(
                    "Download CV",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    onNavMenuTap(2);
                  },
                  child: Text(
                    "Contact Info",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _downloadCV() async {
    if (kIsWeb) {
      // For web
      final ByteData bytes = await rootBundle.load('assets/yadhu_resume.pdf');
      final List<int> list = bytes.buffer.asUint8List();
      final blob = html.Blob([list]);
      final url = html.Url.createObjectUrlFromBlob(blob);

      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', 'assets/yadhu_resume.pdf')
        ..click();

      html.Url.revokeObjectUrl(url);
    } else {
      // For Android and iOS

      final ByteData bytes = await rootBundle.load('assets/yadhu_resume.pdf');
      final Uint8List list = bytes.buffer.asUint8List();

      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/assets/yadhu_resume.pdf');
      await file.writeAsBytes(list);

      OpenFilex.open(file.path);
    }
  }
}
