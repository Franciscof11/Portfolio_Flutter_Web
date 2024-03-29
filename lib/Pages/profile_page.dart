import 'package:flutter/material.dart';
import 'package:my_portfolio/Custom%20Things/profile_details_section.dart';
import 'package:my_portfolio/Custom%20Things/profile_image_section.dart';
import 'package:my_portfolio/Models/my_strings.dart';
import 'package:my_portfolio/Models/responsive_size.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _responsivePadding = _width >= ResponsiveSize.mobileWidth ? 50 : 15;

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _responsivePadding, vertical: 20),
        child: _width >= ResponsiveSize.tabWidth
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: ProfileDetailsSection(contactButtons: MyStrings.contactButtons),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                          child: ProfileImageSection(),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: double.infinity, height: 300, child: ProfileImageSection()),
                      SizedBox(
                        height: 20,
                      ),
                      ProfileDetailsSection(contactButtons: MyStrings.contactButtons, isMobile: true),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
