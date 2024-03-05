import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Custom%20Things/remove_glow_effet.dart';
import 'package:my_portfolio/Pages/components/carousel_projects.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return _height >= 880
        ? Column(
            children: [
              //
              Text(
                'Projetos',
                style: GoogleFonts.raleway(
                  fontSize: 50,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              //
              Container(
                width: double.infinity,
                height: 560,
                child: CarouselProjects(isMobile: false),
              ),
              //
            ],
          )
        :
        //
        //
        //
        // MOBILE
        //
        //
        //
        RemoveGlowEffect(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //
                  Text(
                    'Projetos',
                    style: GoogleFonts.raleway(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  //
                  Container(
                    width: double.infinity,
                    height: 560,
                    child: CarouselProjects(isMobile: true),
                  ),
                  //
                ],
              ),
            ),
          );
  }
}
