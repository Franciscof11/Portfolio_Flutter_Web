import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Models/my_strings.dart';
import 'package:my_portfolio/Pages/components/project_tile.dart';

class CarouselProjects extends StatefulWidget {
  final bool isMobile;
  const CarouselProjects({super.key, required this.isMobile});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselProjects> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final imgList = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: [
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              paddingTop: 30,
              projectIconPath: 'assets/icons/todo.json',
              projectTitle: 'To Do App',
              isPoke: true,
              pokeHeight: 400,
              lottieWidth: 80,
              lottieHeight: 80,
              projectDescription: 'Gerencie suas tarefas com o To Do App! Nele você pode criar, editar, excluir e filtrar suas tarefas de forma prática. Utiliza o armazenamento local junto da sincronização em nuvem via Firestore, além da autenticação completa fornecida pelo Firebase.',
              projectLinkUrl: 'https://github.com/Franciscof11/To_Do_App',
              projectImagePath: 'assets/icons/todo.png',
            ),
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              paddingTop: 0,
              projectIconPath: 'assets/icons/wifi.json',
              projectTitle: 'Connection Checker',
              isPoke: true,
              lottieWidth: 120,
              lottieHeight: 120,
              projectDescription: 'O Connection Checker foi um projeto feito para um setup específico de verificação da conexão do usuário com o aplicativo em questão usando o Bloc para gerenciamento de estado, e o pacote connectivity plus para verificação de rede.',
              projectLinkUrl: 'https://github.com/Franciscof11/Connection_Checker',
              projectImagePath: 'assets/icons/wifi.png',
            ),
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              paddingTop: 10,
              projectIconPath: 'assets/icons/pokedex.json',
              projectTitle: 'Pokédex',
              isPoke: true,
              lottieWidth: 120,
              lottieHeight: 120,
              projectDescription: 'O projeto simula uma Pokédex onde você pode listar pokémons, ver detalhes completos de cada um, como características, habilidades e estatísticas. O aplicativo oferece uma experiência imersiva, incluindo busca por tipos específicos de cada pokémon.',
              projectLinkUrl: 'https://github.com/Franciscof11/Pokedex',
              projectImagePath: 'assets/icons/pokedex.png',
            ),
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              paddingTop: 10,
              projectIconPath: 'assets/icons/auth_firebase.json',
              projectTitle: 'Firebase Auth Boilerplate',
              projectDescription: 'Este é um módulo de autenticação do firebase que criei para acelerar meu desenvolvimento em projetos futuros que usam o mesmo padrão de autenticação usando o firebase.',
              projectLinkUrl: 'https://github.com/Franciscof11/Firebase_Auth_Boilerplate',
              projectImagePath: 'assets/icons/auth_firebase.png',
            ),
            //
            //
            ProjectTile(
              paddingTop: 20,
              isMobile: widget.isMobile,
              projectIconPath: 'assets/icons/mock_shop.json',
              projectTitle: 'Mock Shop',
              projectDescription: 'Aplicativo que simula um e-commerce online, permite explorar a lista de produtos, ver os detalhes dos produtos e simula um carrinho de compras.',
              projectLinkUrl: MyStrings.mockShopLink,
              projectImagePath: 'assets/icons/mock_shop.png',
            ),
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'assets/icons/right.json',
              paddingTop: 0,
              projectTitle: 'Right',
              projectDescription: 'Right é um aplicativo de auxílio ao estudo, que utiliza a metodologia de flashcards. Com ele, você pode criar seus próprios cartões, favoritar os que mais lhe interessam, receber lembretes e muito mais!',
              projectLinkUrl: 'https://github.com/Franciscof11/Right',
              projectImagePath: 'assets/icons/right_showup.png',
            ),
            //
            //
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'assets/icons/weather.json',
              paddingTop: 20,
              projectTitle: 'Weather Now',
              projectDescription: 'Um aplicativo de previsão do tempo. O aplicativo nos mostra a temperatura atual do local escolhido e também nos informa sobre a previsão do tempo.',
              projectLinkUrl: MyStrings.weatherNowLink,
              projectImagePath: 'assets/icons/weather_now.png',
            ),
            //
            //
            //
            //
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'assets/icons/portfolio2.json',
              paddingTop: 0,
              projectTitle: 'Portfólio Web App',
              projectDescription: 'Um portfólio online que mostra um pouco sobre mim, e os projetos que venho construindo. Este é meu primeiro projeto usando Flutter Web, para aplicar todo meu conhecimento de flutter ao aspecto web, trazendo responsividade e reatividade.',
              projectLinkUrl: MyStrings.portfolioLink,
              projectImagePath: 'assets/icons/portfolio.png',
            ),
          ],
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 6),
            autoPlayAnimationDuration: const Duration(seconds: 2),
            height: 550,
            viewportFraction: widget.isMobile ? 1 : 0.75,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return InkWell(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black).withOpacity(_current == entry.key ? 0.9 : 0.4),
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
