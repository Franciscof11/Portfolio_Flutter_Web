import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            width: 1200,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.deepPurple[500],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 60),
                Container(
                  width: 500,
                  height: 500,
                  child: Column(children: [
                    SizedBox(height: 15),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                      width: 300,
                      height: 150,
                      fit: BoxFit.none,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Weather Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        maxLines: 5,
                        'A Forecast Weather App. The app shows us the current temperature (in Celsius) of the chosen location, and also informs us of the next weather forecasts. The App consumes  the open-source API WeatherApi (https://www.weatherapi.com/).',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/github_icon.png',
                        height: 400,
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 410),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 120,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Lottie.network(
                                'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(width: 50),
                Image.asset(
                  'assets/icons/weather_now.png',
                  width: 450,
                  height: 460,
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: 1200,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.deepPurple[500],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 60),
                Container(
                  width: 500,
                  height: 500,
                  child: Column(children: [
                    SizedBox(height: 15),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                      width: 300,
                      height: 150,
                      fit: BoxFit.none,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Mock Shop',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        maxLines: 5,
                        'App that simulates an online sales application, consuming the DummyJSON open source API (https://dummyjson.com/). The application allows us to explore the list of products that comes from the api, see the details of the products listed and simulates a shopping cart.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/github_icon.png',
                        height: 400,
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 410),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 120,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Lottie.network(
                                'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(width: 50),
                Image.asset(
                  'assets/icons/mock_shop.png',
                  width: 450,
                  height: 460,
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: 1200,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.deepPurple[500],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 60),
                Container(
                  width: 500,
                  height: 500,
                  child: Column(children: [
                    SizedBox(height: 15),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                      width: 300,
                      height: 150,
                      fit: BoxFit.none,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Portfolio WebApp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        maxLines: 5,
                        'An online portfolio that shows a little about me, and the projects I have been building. This is my first project using Flutter Web, to apply all my flutter knowledge to the web aspect, bringing responsiveness and reactivity.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/portfolio.png',
                        height: 400,
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 410),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 120,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Lottie.network(
                                'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(width: 50),
                Image.asset(
                  'assets/icons/weather_now.png',
                  width: 450,
                  height: 460,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
