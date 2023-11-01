import 'package:flutter/material.dart';

class OnGenerateRouteErrorPage extends StatefulWidget {
  const OnGenerateRouteErrorPage({super.key});

  static const onGenerateRouteErrorPage = "ongeneraterouteerroepage";

  @override
  State<OnGenerateRouteErrorPage> createState() =>
      _OnGenerateRouteErrorPageState();
}

class _OnGenerateRouteErrorPageState extends State<OnGenerateRouteErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Generate Route Error Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("Oops 404 !! No page Found")],
        ),
      ),
    );
  }
}
