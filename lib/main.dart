import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       children: [
         Row(children: [
           for(var i=0; i <= 6; i++)
           Expanded(child: Column(children: [
             Text('Today'),
              Text('8/09'),
           ],))
         ],),
         Image.asset('assets/images/showers.png'),
         Text('37 C'),
         Text('Light Cloud'),
         Text('Mon Aug 9, 2021'),
         Row(children: [
           Column(children: [
             Text('45%'),
             Text('Humidity')
           ],),
           Column(
                children: [Text('20%'), Text('Predictability')],
              ),
         ],)
       ],
      ),  
    );
  }
}
