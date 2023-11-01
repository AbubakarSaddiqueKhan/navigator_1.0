import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/matrix_4_transition/first_page.dart';
import 'package:flutter_navigator_1_0_practice/page_route_builder_animations/first_page.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_on_generate_route/first_on_generate_route_screen.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_on_generate_route/on_generate_route_navigation.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_route_settings_argumnets/first_screen_data.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_receive_data_using_push_name/first_screen_push_name.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_receive_data_using_push_name/second_screen_using_push_name.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/simple_by_requiered_in_constructor/first_screen.dart';
import 'package:flutter_navigator_1_0_practice/simple_material_page_route/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: OnGenerateRouteFirstPage.onGenerateRouteFirstPage,
      // routes: {
      //   FirstScreenPushName.FIRST_PAGE: (context) => FirstScreenPushName(),
      //   SecondPagePushName.SECOND_PAGE: (context) => SecondPagePushName()
      // },
      // initialRoute: FirstScreenPushName.FIRST_PAGE,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FirstScreenPushName();
  }
}



 // onGenerateRoute: onGenerateRoute,
      // initialRoute: OnGenerateRouteFirstPage.onGenerateRouteFirstPage,


 // home: MyHomePage(title: "My Home Page"),
// routes: {
      //   FirstScreenPushName.FIRST_PAGE: (context) => FirstScreenPushName(),
      //   SecondPagePushName.SECOND_PAGE: (context) => SecondPagePushName()
      // },


      // initialRoute: FirstScreenPushName.FIRST_PAGE,


      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
