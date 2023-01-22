import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyStrings {
  MyStrings._();

  static final List<String> keywords = ["Develop", "Debug", "Deploy"];

  static final String headLine = "Mobile Developer";
  static final String tagLine = "";

  static final List<String> homePageMainContents = [
    "Hello",
    "I'm Francisco Gabriel",
    "Welcome To My Portfolio!",
  ];

  static final String myName = "Francisco Gabriel";
  static final String myTagLine = "Mobile Developer";
  static final String myDescription =
      "Enthusiastic about the technological area related to programming and its entire ecosystem, I started my training with studies on native applications using Java and Koltin, as I have always identified myself with mobile development. After that I entered the world of hybrid development, perfecting myself in Flutter, as well as in Android Native, my main stack currently. My passion for programming and the IT area started in childhood, and since then I've been studying and working continuously to become a better professional.";
  static final String myMail = "devshakib015@gmail.com";
  static final String myPhone = "+8801710265421";
  static final String myMessenger = "venomShakib";
  static final String myFacebook = "venomShakib";
  static final String myWhatsApp = "+8801710265421";
  static final String myWechat = "venomshakib";
  static final String myGithub = "devShakib015";
  static final String myResume =
      "https://docs.google.com/document/d/1Ui_bfssTp0Yqb4X7-5rWfvpfEGLX5_0I-w6AWGxBiTk/edit?usp=share_link";

  static final List<Map<String, dynamic>> contactButtons = [
    {
      "icon": CupertinoIcons.mail_solid,
      "url": "mailto:${MyStrings.myMail}",
      "tooltip": MyStrings.myMail,
    },
    {
      "icon": CupertinoIcons.phone_fill,
      "url": "tel:${MyStrings.myPhone}",
      "tooltip": MyStrings.myPhone,
    },
    {
      "icon": FontAwesomeIcons.facebookMessenger,
      "url": "https://m.me/${MyStrings.myMessenger}/",
      "tooltip": MyStrings.myMessenger,
    },
    {
      "icon": FontAwesomeIcons.whatsappSquare,
      "url": "https://api.whatsapp.com/send?phone=${MyStrings.myWhatsApp}",
      "tooltip": MyStrings.myWhatsApp,
    },
    {
      "icon": FontAwesomeIcons.weixin,
      "url": "https://weixin://contacts/profile/{${MyStrings.myWhatsApp}}",
      "tooltip": MyStrings.myWechat,
    },
    {
      "icon": FontAwesomeIcons.facebookF,
      "url": "https://facebook.com/${MyStrings.myFacebook}",
      "tooltip": MyStrings.myFacebook,
    },
    {
      "icon": FontAwesomeIcons.github,
      "url": "https://github.com/${MyStrings.myGithub}",
      "tooltip": MyStrings.myGithub,
    }
  ];

  static final String loremPara =
      "Lorem labore amet eu ex aliquip ex fugiat. Fugiat enim et irure ullamco quis sint sint laborum adipisicing do tempor. Qui anim occaecat elit amet magna est. Ex proident culpa voluptate adipisicing amet duis. Lorem deserunt incididunt magna magna veniam aliquip Lorem. Elit minim nisi nisi proident nulla veniam commodo occaecat voluptate eiusmod non duis sint.";
}
