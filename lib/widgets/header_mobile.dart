import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          Text(
            "Yadhukrishnan V",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 22,
                // fontWeight: FontWeight.,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
