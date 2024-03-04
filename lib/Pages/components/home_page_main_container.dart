import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Models/my_strings.dart';
import 'package:my_portfolio/Models/responsive_size.dart';

class HomePageMainContainer extends StatelessWidget {
  const HomePageMainContainer({
    Key? key,
    required double height,
    required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height >= ResponsiveSize.fhdHeight ? 330 : 300,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Colors.black54,
                fontSize: _width >= ResponsiveSize.tabWidth ? 60 : 40,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: MyStrings.homePageMainContents
                    .map(
                      (text) => TypewriterAnimatedText(
                        text,
                        textStyle: GoogleFonts.raleway(
                          color: Color.fromARGB(255, 11, 56, 65),
                          wordSpacing: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                    .toList(),
                repeatForever: true,
                pause: const Duration(milliseconds: 1000),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
