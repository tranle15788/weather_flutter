import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mccounting_text/mccounting_text.dart';
import 'package:animate_do/animate_do.dart';
import './data_weather.dart';
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
  bool test = false;

  int currentBannerIndex = 7;

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
      width: width > 600 ? 600 : width,
      color: Colors.white,
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
                        setState(() {
                          test = !test;
                        });
                      }),
                      child: Container(
                          alignment: Alignment.center,
                          width: width > 600 ? 600 / 7 - 3 : width / 7 - 3,
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
          const SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(weathers.length, (index) {
              Weather weather = weathers[index];
              return Container(
                  child: index == currentBannerIndex
                      ? Column(
                          children: [
                            Image.asset(weather.imgWeatherStates, width: 70),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.Colors.blueSky,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: 90,
                                  height: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        height: 50,
                                        width: 50,
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          McCountingText(
                                            begin: 0,
                                            end: weather.humidity.toDouble(),
                                            duration:
                                                const Duration(seconds: 1),
                                            curve: Curves.decelerate,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),
                                          ),
                                          const Text('%',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10,
                                                color: Colors.white,
                                                height: 2,
                                              )),
                                        ],
                                      ),
                                      const Text(
                                        'Humidity',
                                        style: TextStyle(
                                            height: 2,
                                            color: Colors.white,
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 90,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Theme.Colors.purple,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        height: 50,
                                        width: 50,
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          McCountingText(
                                            begin: 0,
                                            end: weather.predictability
                                                .toDouble(),
                                            duration:
                                                const Duration(seconds: 1),
                                            curve: Curves.decelerate,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),
                                          ),
                                          const Text('%',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10,
                                                color: Colors.white,
                                                height: 2,
                                              )),
                                        ],
                                      ),
                                      const Text(
                                        'Predictability',
                                        style: TextStyle(
                                            height: 2,
                                            color: Colors.white,
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : Container());
            }),
          ),
        ],
      ),
    ));
  }
}



// lí do bỏ const trước
// gradian
// StatefulWidget
