import 'package:flutter/material.dart';
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
  List<Weather> weathers = [
    Weather(dayOfTheWeek: 'Today', dateMonth: '8/09'),
    Weather(dayOfTheWeek: 'Tue', dateMonth: '8/10'),
    Weather(dayOfTheWeek: 'Web', dateMonth: '8/11'),
    Weather(dayOfTheWeek: 'Thu', dateMonth: '8/12'),
    Weather(dayOfTheWeek: 'Fri', dateMonth: '8/13'),
    Weather(dayOfTheWeek: 'Sat', dateMonth: '8/14'),
    Weather(dayOfTheWeek: 'Sun', dateMonth: '8/15'),
    Weather(dayOfTheWeek: 'Today', dateMonth: '8/09'),
    Weather(dayOfTheWeek: 'Tue', dateMonth: '8/10'),
    Weather(dayOfTheWeek: 'Web', dateMonth: '8/11'),
    Weather(dayOfTheWeek: 'Thu', dateMonth: '8/12'),
    Weather(dayOfTheWeek: 'Fri', dateMonth: '8/13'),
    Weather(dayOfTheWeek: 'Sat', dateMonth: '8/14'),
    Weather(dayOfTheWeek: 'Sun', dateMonth: '8/15'),
    Weather(dayOfTheWeek: 'Today', dateMonth: '8/09'),
    Weather(dayOfTheWeek: 'Tue', dateMonth: '8/10'),
    Weather(dayOfTheWeek: 'Web', dateMonth: '8/11'),
    Weather(dayOfTheWeek: 'Thu', dateMonth: '8/12'),
    Weather(dayOfTheWeek: 'Fri', dateMonth: '8/13'),
    Weather(dayOfTheWeek: 'Sat', dateMonth: '8/14'),
    Weather(dayOfTheWeek: 'Sun', dateMonth: '8/15'),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var item in weathers)
                      GestureDetector(
                          onTap: () => setState(() {
                                changeDate = !changeDate;
                              }),
                          child: Container(
                              width: width / 7 - 3,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Theme.Colors.primary,
                                      Theme.Colors.blueSky,
                                    ],
                                    stops: [
                                      0.0,
                                      1.0
                                    ],
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    tileMode: TileMode.repeated),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Column(
                                children: [
                                  Text(
                                    item.dayOfTheWeek,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    item.dateMonth,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ],
                              ))),
                  ],
                )),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/images/showers.png', width: 95),
          RichText(
            text: const TextSpan(
              text: '37',
              style: TextStyle(
                  color: Theme.Colors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 65,
                  height: 1.5),
              children: <TextSpan>[
                TextSpan(
                    text: '°c',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
          const Text(
            'Light Cloud',
            style: TextStyle(
                height: 1.3, color: Theme.Colors.blueSky, fontSize: 30),
          ),
          const Text(
            'Mon Aug 9, 2021',
            style: TextStyle(height: 2.5, color: Colors.black, fontSize: 15),
          ),
          const SizedBox(
            height: 20,
          ),
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

  Weather({required this.dayOfTheWeek, required this.dateMonth});
}


// lí do bỏ const trước
// gradian
