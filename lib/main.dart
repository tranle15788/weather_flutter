import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'theme.dart' as Theme;

void main() {
  runApp(const MyApp());
}

// My_app

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

// My_home
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool changeDate = false;
  int currentBannerIndex = 7;
  List<Weather> weathers = [
    Weather(
        dayOfTheWeek: 'Mon',
        dateMonth: '8/02',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Mon Aug 2, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Tue',
        dateMonth: '8/03',
        imgWeatherStates: 'assets/images/sleet.png',
        temperature: -15,
        weatherStates: 'Sleet',
        dateMonthYear: 'Tue Aug 3, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Web',
        dateMonth: '8/04',
        imgWeatherStates: 'assets/images/heavyCloud.jpeg',
        temperature: 37,
        weatherStates: 'Light Cloud',
        dateMonthYear: 'Web Aug 4, 2021',
        humidity: 45,
        predictability: 20),
    Weather(
        dayOfTheWeek: 'Thu',
        dateMonth: '8/05',
        imgWeatherStates: 'assets/images/heavyCloud.jpeg',
        temperature: 37,
        weatherStates: 'Light Cloud',
        dateMonthYear: 'Thu Aug 5, 2021',
        humidity: 45,
        predictability: 20),
    Weather(
        dayOfTheWeek: 'Fri',
        dateMonth: '8/06',
        imgWeatherStates: 'assets/images/heavyCloud.jpeg',
        temperature: 37,
        weatherStates: 'Light Cloud',
        dateMonthYear: 'Fri Aug 6, 2021',
        humidity: 45,
        predictability: 20),
    Weather(
        dayOfTheWeek: 'Sat',
        dateMonth: '8/07',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Sat Aug 7, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Sun',
        dateMonth: '8/08',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Sun Aug 8, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
      dayOfTheWeek: 'Today',
      dateMonth: '8/09',
      imgWeatherStates: 'assets/images/showers.png',
      temperature: 37,
      weatherStates: 'Light Cloud',
      dateMonthYear: 'Mon Aug 9, 2021',
      humidity: 45,
      predictability: 20,
    ),
    Weather(
        dayOfTheWeek: 'Tue',
        dateMonth: '8/10',
        imgWeatherStates: 'assets/images/sleet.png',
        temperature: -15,
        weatherStates: 'Sleet',
        dateMonthYear: 'Tue Aug 10, 2021',
        humidity: 30,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Web',
        dateMonth: '8/11',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Web Aug 11, 2021',
        humidity: 10,
        predictability: 30),
    Weather(
        dayOfTheWeek: 'Thu',
        dateMonth: '8/12',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Thu Aug 12, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Fri',
        dateMonth: '8/13',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Fri Aug 13, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Sat',
        dateMonth: '8/14',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Sat Aug 14, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Sun',
        dateMonth: '8/15',
        imgWeatherStates: 'assets/images/sleet.png',
        temperature: -15,
        weatherStates: 'Sleet',
        dateMonthYear: 'Sun Aug 15, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Mon',
        dateMonth: '8/16',
        imgWeatherStates: 'assets/images/sleet.png',
        temperature: -15,
        weatherStates: 'Sleet',
        dateMonthYear: 'Mon Aug 16, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Tue',
        dateMonth: '8/17',
        imgWeatherStates: 'assets/images/heavyCloud.jpeg',
        temperature: 37,
        weatherStates: 'Light Cloud',
        dateMonthYear: 'Tue Aug 17, 2021',
        humidity: 45,
        predictability: 20),
    Weather(
        dayOfTheWeek: 'Web',
        dateMonth: '8/18',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Web Aug 18, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Thu',
        dateMonth: '8/19',
        imgWeatherStates: 'assets/images/sleet.png',
        temperature: -15,
        weatherStates: 'Sleet',
        dateMonthYear: 'Thu Aug 19, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Fri',
        dateMonth: '8/20',
        imgWeatherStates: 'assets/images/showers.png',
        temperature: -10,
        weatherStates: 'Snow',
        dateMonthYear: 'Fri Aug 20, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Sat',
        dateMonth: '8/21',
        imgWeatherStates: 'assets/images/sleet.png',
        temperature: -15,
        weatherStates: 'Sleet',
        dateMonthYear: 'Sat Aug 21, 2021',
        humidity: 10,
        predictability: 10),
    Weather(
        dayOfTheWeek: 'Sun',
        dateMonth: '8/22',
        imgWeatherStates: 'assets/images/heavyCloud.jpeg',
        temperature: 37,
        weatherStates: 'Light Cloud',
        dateMonthYear: 'Sun Aug 22, 2021',
        humidity: 45,
        predictability: 20),
  ];

  void selectDate(int btnTag) {
    setState(() {
      currentBannerIndex = btnTag;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 62,
              initialPage: 1,
              viewportFraction: 1,
              enableInfiniteScroll: false,
            ),
            itemCount: (weathers.length / 7).round(),
            itemBuilder: (context, index, realIdx) {
              int mon = index * 7;
              int tue = mon + 1;
              int web = tue + 1;
              int thu = web + 1;
              int fri = thu + 1;
              int sat = fri + 1;
              int sun = sat + 1;
              return Row(
                children: [mon, tue, web, thu, fri, sat, sun].map((idx) {
                  Weather weather = weathers[idx];
                  return GestureDetector(
                      onTap: (() {
                        selectDate(idx);
                      }),
                      child: Container(
                          width: width / 7 - 3,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: const [
                                  Theme.Colors.primary,
                                  Theme.Colors.blueSky,
                                ],
                                stops: [
                                  currentBannerIndex == idx ? 0.0 : 1.0,
                                  1.0
                                ],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                tileMode: TileMode.repeated),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Column(children: [
                            Text(
                              weather.dayOfTheWeek,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              weather.dateMonth,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ])));
                }).toList(),
              );
            },
          ),
          Container(
              // color: Colors.pink,
              height: 500,
              child: ListView.builder(
                  itemCount: (weathers.length).round(),
                  itemBuilder: (context, index) {
                    Weather weather = weathers[index];
                    return Container(
                        child: index == currentBannerIndex
                            ? Column(
                                children: [
                                  Image.asset(weather.imgWeatherStates,
                                      width: 70),
                                  RichText(
                                    text: TextSpan(
                                      text: '${weather.temperature}',
                                      style: const TextStyle(
                                          color: Theme.Colors.primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 65,
                                          height: 1.5),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: '°c',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    weather.weatherStates,
                                    style: const TextStyle(
                                        height: 1.3,
                                        color: Theme.Colors.blueSky,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    weather.dateMonthYear,
                                    style: const TextStyle(
                                        height: 2.5,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              )
                            : Container());
                  })),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Theme.Colors.blueSky,
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //       padding: EdgeInsets.all(20),
          //       width: 100,
          //       child: Column(
          //         children: const [
          //           Text(
          //             '45%',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w500,
          //                 fontSize: 15),
          //           ),
          //           Text(
          //             'Humidity',
          //             style: TextStyle(
          //                 height: 2, color: Colors.white, fontSize: 10),
          //           )
          //         ],
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Container(
          //       width: 100,
          //       decoration: BoxDecoration(
          //         color: Theme.Colors.purple,
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //       // padding: EdgeInsets.all(20),
          //       child: Column(
          //         children: const [
          //           Text(
          //             '20%',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w500,
          //                 fontSize: 15),
          //           ),
          //           Text(
          //             'Predictability',
          //             style: TextStyle(
          //                 height: 2, color: Colors.white, fontSize: 10),
          //           )
          //         ],
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    ));
  }
}

class Weather {
  String dayOfTheWeek;
  String dateMonth;
  String imgWeatherStates;
  int temperature;
  String weatherStates;
  String dateMonthYear;
  int humidity;
  int predictability;

  Weather({
    required this.dayOfTheWeek,
    required this.dateMonth,
    required this.imgWeatherStates,
    required this.temperature,
    required this.weatherStates,
    required this.dateMonthYear,
    required this.humidity,
    required this.predictability,
  });
}


// lí do bỏ const trước
// gradian
