import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/Models/responsive_size.dart';
import 'package:my_portfolio/Pages/components/heading_text.dart';
import 'package:my_portfolio/Pages/components/home_page_main_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    double _responsivePadding = _width >= ResponsiveSize.mobileWidth ? 50 : 15;
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _width >= ResponsiveSize.tabWidth
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(
                        responsivePadding: _responsivePadding,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: _responsivePadding, vertical: 0),
                          child: LottieBuilder.asset(
                            'assets/icons/home_2.json',
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingText(
                        responsivePadding: _responsivePadding,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: _responsivePadding,
                          ),
                          child: LottieBuilder.asset(
                            'assets/icons/home_animation.json',
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ],
                  ),
            HomePageMainContainer(height: _height, width: _width),
          ],
        ),
      ),
    );
  }
}
