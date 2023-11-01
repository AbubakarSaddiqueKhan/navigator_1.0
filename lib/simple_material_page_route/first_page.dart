import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/simple_material_page_route/second_page.dart';

class FirstPageDesign extends StatefulWidget {
  const FirstPageDesign({super.key});

  @override
  State<FirstPageDesign> createState() => _FirstPageDesignState();
}

class _FirstPageDesignState extends State<FirstPageDesign> {
  @override
  Widget build(BuildContext context) {
    void navigateToNextPage() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SecondPageDesign(),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("First Page Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "First Page",
              style: TextStyle(color: Colors.deepOrange, fontSize: 40),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: navigateToNextPage),
    );
  }
}
