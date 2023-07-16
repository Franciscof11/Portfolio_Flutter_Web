import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyStrings {
  MyStrings._();

  static final List<String> keywords = ["Develop", "Debug", "Deploy"];

  static final String headLine = "Desenvolvedor Flutter";
  static final String tagLine = "";

  static final List<String> homePageMainContents = [
    "Olá",
    "Eu sou o Francisco Gabriel",
    "Bem vindo ao meu Portfólio!",
  ];

  static final String myName = "Francisco Gabriel";
  static final String myTagLine = "Desenvolvedor Flutter";
  static final String myDescription =
      "Entusiasta pela área tecnológica ligada à programação e todo o seu ecossistema, iniciei minha formação com estudos sobre aplicativos nativos utilizando Java e Koltin, pois sempre me identifiquei com o desenvolvimento mobile. Após isso entrei no mundo do desenvolvimento híbrido, me aperfeiçoando em Flutter e Dart, minha stack principal atualmente. Atualmente sigo me aperfeiçoando para me tornar um profissional melhor.";

  static final String myGithub = "Franciscof11";
  static final String githubLink = "https://github.com/Franciscof11";
  static final String linkedinLink =
      "https://www.linkedin.com/in/franciscossg/";
  static final String whats = "https://contate.me/francisco-dev";
  static final String weatherNowLink =
      "https://github.com/Franciscof11/WeatherNow--Flutter";
  static final String rightLink = "https://github.com/Franciscof11/right";
  static final String mockShopLink =
      "https://github.com/Franciscof11/Mock-Shop--Flutter";
  static final String portfolioLink =
      "https://github.com/Franciscof11/Portfolio--Flutter";
  static final String myResume =
      "https://docs.google.com/document/d/1Io_tNBZVscoF9AACmFomGTnoZsjDXJ69xhWMcgBJ3Do/edit?usp=share_link";

  static final List<Map<String, dynamic>> contactButtons = [
    {
      "icon": FontAwesomeIcons.github,
      "url": "https://github.com/${MyStrings.myGithub}",
      "tooltip": MyStrings.myGithub,
    },
    {
      "icon": FontAwesomeIcons.linkedin,
      "url": "https://www.linkedin.com/in/franciscossg/",
      "tooltip": MyStrings.myGithub,
    }
  ];
}
