import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/Models/launch_url.dart';

class ProjectTile extends StatelessWidget {
  final String projectIconPath;
  final String projectTitle;
  final String projectDescription;
  final String projectLinkUrl;
  final String projectImagePath;
  final bool isMobile;
  final double paddingTop;
  const ProjectTile({
    super.key,
    required this.projectIconPath,
    required this.projectTitle,
    required this.projectDescription,
    required this.projectLinkUrl,
    required this.projectImagePath,
    this.isMobile = false,
    this.paddingTop = 50,
  });

  @override
  Widget build(BuildContext context) {
    return !isMobile
        ? Container(
            height: 530,
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 12,
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(14)),
                color: Colors.deepPurple[500],
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: paddingTop),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Lottie.asset(
                              projectIconPath,
                              width: 180,
                              height: 180,
                            ),
                            Text(
                              projectTitle,
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 450,
                              child: Text(
                                maxLines: 5,
                                projectDescription,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 50), backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(projectLinkUrl);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        Image.asset(
                          projectImagePath,
                          width: 380,
                          height: 380,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        : Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 12,
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(14)),
                color: Colors.deepPurple[500],
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Lottie.asset(
                          projectIconPath,
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          projectTitle,
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          projectDescription,
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 0),
                        Image.asset(
                          projectImagePath,
                          width: 160,
                          height: 160,
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(fixedSize: Size(190, 36), backgroundColor: Colors.white),
                          onPressed: () async {
                            await MyUrl.launchURL(projectLinkUrl);
                          },
                          child: Image.asset(
                            'assets/icons/github_icon.png',
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
