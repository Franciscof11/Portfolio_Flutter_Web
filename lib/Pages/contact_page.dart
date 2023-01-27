import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Models/launch_url.dart';
import '../Models/my_strings.dart';
import '../Models/responsive_size.dart';

class WorksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _responsivePadding = _width >= ResponsiveSize.mobileWidth ? 50 : 15;

    return Container(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: _responsivePadding, vertical: 20),
        child: _width >= ResponsiveSize.tabWidth
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 4),
                    Text(
                      'Contact Me',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 400,
                          height: 565,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'Send a message!',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 50),
                              Container(
                                width: 400,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 152, 245, 175),
                                    borderRadius: BorderRadius.circular(14)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/phone.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'Phone:  +55 (98) 99161-9987     ',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                              Container(
                                width: 400,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 152, 245, 175),
                                    borderRadius: BorderRadius.circular(14)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/email.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      ' franciscogabrielf11@gmail.com',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                              Container(
                                width: 400,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 152, 245, 175),
                                    borderRadius: BorderRadius.circular(14)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/whatsapp.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'WhatsApp:',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    ElevatedButton(
                                      onPressed: () async {
                                        await MyUrl.launchURL(MyStrings.whats);
                                      },
                                      child: Text(
                                        'Click Here',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        minimumSize: Size(190, 50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      await MyUrl.launchURL(
                                          MyStrings.githubLink);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 152, 245, 175),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    child: Container(
                                      width: 60,
                                      height: 80,
                                      child: Image.asset(
                                        'assets/icons/github1.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  ElevatedButton(
                                    onPressed: () async {
                                      await MyUrl.launchURL(
                                          MyStrings.linkedinLink);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 152, 245, 175),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    child: Container(
                                      width: 60,
                                      height: 80,
                                      child: Image.asset(
                                        'assets/icons/linkedin1.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 80),
                        Container(
                          width: 550,
                          height: 550,
                          child: Lottie.network(
                              'https://assets8.lottiefiles.com/packages/lf20_hokifDNfXn.json'),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400,
                      child: Container(
                        color: Colors.pink,
                        width: 400,
                        height: 300,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.purple,
                      width: 400,
                      height: 300,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}