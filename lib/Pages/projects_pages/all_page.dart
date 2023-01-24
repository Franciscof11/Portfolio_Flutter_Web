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
                Container(
                  width: 500,
                  height: 450,
                  child: Column(children: [
                    SizedBox(height: 15),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                      width: 250,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
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
                  ]),
                ),
                SizedBox(width: 50),
                Image.asset(
                  'assets/icons/weather_now.png',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
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
                Container(
                  width: 500,
                  height: 450,
                  child: Column(children: [
                    SizedBox(height: 15),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                      width: 250,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
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
                  ]),
                ),
                SizedBox(width: 50),
              ],
            ),
          ),
          SizedBox(height: 25),
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
                Container(
                  width: 500,
                  height: 450,
                  child: Column(children: [
                    SizedBox(height: 15),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                      width: 250,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
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
                  ]),
                ),
                SizedBox(width: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
