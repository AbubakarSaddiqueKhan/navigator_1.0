import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_on_generate_route/second_on_generate_route_screen.dart';

class OnGenerateRouteFirstPage extends StatefulWidget {
  const OnGenerateRouteFirstPage({super.key});

  static const onGenerateRouteFirstPage = "/ongenerateroutefirstpage";

  @override
  State<OnGenerateRouteFirstPage> createState() =>
      _OnGenerateRouteFirstPageState();
}

class _OnGenerateRouteFirstPageState extends State<OnGenerateRouteFirstPage> {
  void goToSecondPage() {
    Navigator.of(context).pushNamed(
        OnGenerateRouteSecondPage.onGenerateRouteSecondPage,
        arguments: "Data Send From First page");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Generate Route First page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("First Page")],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: goToSecondPage),
    );
  }
}
