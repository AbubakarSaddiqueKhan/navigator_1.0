import 'package:flutter/material.dart';

class OnGenerateRouteSecondPage extends StatefulWidget {
  const OnGenerateRouteSecondPage({super.key});

  static const onGenerateRouteSecondPage = "/ongenerateroutesecondpage";

  @override
  State<OnGenerateRouteSecondPage> createState() =>
      _OnGenerateRouteSecondPageState();
}

class _OnGenerateRouteSecondPageState extends State<OnGenerateRouteSecondPage> {
  @override
  Widget build(BuildContext context) {
    String result = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("On Generate Route Second page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Data : $result",
              style: TextStyle(color: Colors.orange, fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
