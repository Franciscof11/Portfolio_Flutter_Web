import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Models/my_strings.dart';

class HeadingText extends StatelessWidget {
  final double responsivePadding;
  const HeadingText({
    Key? key,
    required this.responsivePadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: responsivePadding),
      child: Text(
        MyStrings.headLine,
        style: GoogleFonts.raleway(
          color: Colors.black87,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
