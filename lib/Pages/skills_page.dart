import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';

import 'projects_pages/all_page.dart';
import 'projects_pages/flutter_page.dart';
import 'projects_pages/kotlin_page.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 50,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25),
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  width: 1200,
                  height: 564,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        width: 350,
                        child: TabBar(
                          overlayColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          onTap: (value) => {},
                          unselectedLabelColor: Colors.grey[800],
                          labelColor: Colors.deepPurple,
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                          indicator: const ContainerTabIndicator(
                            height: 3,
                            padding: EdgeInsets.only(top: 20),
                            width: 40,
                            color: Colors.deepPurple,
                          ),
                          tabs: [
                            Text('All'),
                            Text('Flutter'),
                            Text('Kotlin'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: TabBarView(children: [
                          AllPage(),
                          FlutterPage(),
                          KotlinPage(),
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
