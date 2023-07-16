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
                      'Contatos',
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
                                'Mande uma mensagem!',
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
                                        'Clique Aqui',
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
                                  children: [
                                    Image.asset(
                                      'assets/icons/phone.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      '+55 (98) 98504-3843                        ',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
            /*Parte Responsiva para Mobile*/
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 390,
                      child: Column(
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 152, 245, 175),
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/phone.png',
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Phone:  +55 (98) 99161-9987     ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 152, 245, 175),
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/email.png',
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  ' franciscogabrielf11@gmail.com',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 152, 245, 175),
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/whatsapp.png',
                                  width: 25,
                                  height: 25,
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
                                      fontSize: 18,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(60, 40),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  await MyUrl.launchURL(MyStrings.githubLink);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 152, 245, 175),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Container(
                                  width: 50,
                                  height: 70,
                                  child: Image.asset(
                                    'assets/icons/github1.png',
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              ElevatedButton(
                                onPressed: () async {
                                  await MyUrl.launchURL(MyStrings.linkedinLink);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 152, 245, 175),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Container(
                                  width: 50,
                                  height: 70,
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
                    Container(
                      width: double.infinity,
                      height: 290,
                      child: Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_hokifDNfXn.json',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
