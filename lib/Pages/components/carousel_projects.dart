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
  final imgList = ['uno', 'dos', 'tres', 'quatro'];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: [
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'https://assets7.lottiefiles.com/packages/lf20_TMRZ23.json',
              projectTitle: 'Mock Shop',
              projectDescription:
                  'Aplicativo que simula um e-commerce online, permite explorar a lista de produtos, ver os detalhes dos produtos e simula um carrinho de compras.',
              projectLinkUrl: MyStrings.mockShopLink,
              projectImagePath: 'assets/icons/mock_shop.png',
            ),
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'https://assets7.lottiefiles.com/packages/lf20_TMRZ23.json',
              projectTitle: 'Mock Shop',
              projectDescription:
                  'Aplicativo que simula um e-commerce online, permite explorar a lista de produtos, ver os detalhes dos produtos e simula um carrinho de compras.',
              projectLinkUrl: MyStrings.mockShopLink,
              projectImagePath: 'assets/icons/mock_shop.png',
            ),
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'https://assets7.lottiefiles.com/packages/lf20_TMRZ23.json',
              projectTitle: 'Mock Shop',
              projectDescription:
                  'Aplicativo que simula um e-commerce online, permite explorar a lista de produtos, ver os detalhes dos produtos e simula um carrinho de compras.',
              projectLinkUrl: MyStrings.mockShopLink,
              projectImagePath: 'assets/icons/mock_shop.png',
            ),
            ProjectTile(
              isMobile: widget.isMobile,
              projectIconPath: 'https://assets7.lottiefiles.com/packages/lf20_TMRZ23.json',
              projectTitle: 'Mock Shop',
              projectDescription:
                  'Aplicativo que simula um e-commerce online, permite explorar a lista de produtos, ver os detalhes dos produtos e simula um carrinho de compras.',
              projectLinkUrl: MyStrings.mockShopLink,
              projectImagePath: 'assets/icons/mock_shop.png',
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
