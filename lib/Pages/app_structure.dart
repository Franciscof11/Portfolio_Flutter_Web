import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Models/responsive_size.dart';
import 'package:my_portfolio/Pages/contact_page.dart';
import 'package:my_portfolio/Pages/home_page.dart';
import 'package:my_portfolio/Pages/profile_page.dart';
import 'package:my_portfolio/Pages/projects_page.dart';
import 'package:shimmer/shimmer.dart';

class AppStructure extends StatefulWidget {
  @override
  _AppStructureState createState() => _AppStructureState();
}

class _AppStructureState extends State<AppStructure> {
  int _selectedTab = 1;
  Color homeColor = Color(0xff10505B);

  Widget _selectTabs() {
    if (_selectedTab == 1) {
      return HomePage();
    } else if (_selectedTab == 2) {
      return SkillsPage();
    } else if (_selectedTab == 3) {
      return WorksPage();
    } else
      return ProfilePage();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      //Backgroud Color
      backgroundColor: homeColor,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInBack,
            width: _width,
            height: _height,
            color: homeColor,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: _width >= ResponsiveSize.tabWidth
                    ? EdgeInsets.only(bottom: 25)
                    : EdgeInsets.only(bottom: 10),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Shimmer.fromColors(
                      period: Duration(seconds: 2),
                      baseColor: Colors.white,
                      highlightColor: homeColor.withAlpha(200),
                      child: Text(
                        "Desenvolvido utilizando Flutter Web",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: _width >= ResponsiveSize.fhdWidth
                ? const EdgeInsets.symmetric(horizontal: 200, vertical: 80)
                : (_width >= ResponsiveSize.hdWidth
                    ? const EdgeInsets.symmetric(horizontal: 160, vertical: 80)
                    : (_width >= ResponsiveSize.normalWidth
                        ? const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 80)
                        : (_width >= ResponsiveSize.tabWidth
                            ? const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 60)
                            : const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 40)))),
            child: _height >= 540
                ? Card(
                    color: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 20,
                    borderOnForeground: true,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            // child: _selectTabs(),
                            child: PageTransitionSwitcher(
                              duration: Duration(seconds: 1),
                              transitionBuilder: (child, primaryAnimation,
                                      secondaryAnimation) =>
                                  FadeThroughTransition(
                                fillColor: Colors.transparent,
                                animation: primaryAnimation,
                                secondaryAnimation: secondaryAnimation,
                                child: child,
                              ),
                              child: _selectTabs(),
                            ),
                          ),
                          Container(
                            height: _height >= ResponsiveSize.tabHeight
                                ? _height * 0.09
                                : _height * 0.12,
                            width:
                                _width >= ResponsiveSize.tabWidth ? 300 : null,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    tooltip: "Home",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 1;
                                        homeColor = Color(0xff10505B);
                                      });
                                    },
                                    icon: Icon(
                                      CupertinoIcons.home,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  IconButton(
                                    tooltip: "Sobre mim",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 4;
                                        homeColor = Color(0xffC7C8CA);
                                      });
                                    },
                                    icon: Icon(
                                      CupertinoIcons.profile_circled,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  IconButton(
                                    tooltip: "Projetos",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 2;
                                        homeColor =
                                            Color.fromARGB(255, 103, 3, 143);
                                      });
                                    },
                                    icon: Icon(
                                      CupertinoIcons.square_split_2x2_fill,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  IconButton(
                                    tooltip: "Contato",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 3;
                                        homeColor =
                                            Color.fromARGB(224, 43, 153, 29);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.call_outlined,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(
                    child: Center(
                      child: Text(
                        "Not available at this aspect ratio!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
