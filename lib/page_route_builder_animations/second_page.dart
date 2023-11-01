import 'package:flutter/material.dart';

class MySecondPageDesign extends StatefulWidget {
  const MySecondPageDesign({super.key});

  @override
  State<MySecondPageDesign> createState() => _MySecondPageDesignState();
}

class _MySecondPageDesignState extends State<MySecondPageDesign> {
  @override
  Widget build(BuildContext context) {
    void goBack() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("My Second page Design "),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Second Page",
              style: TextStyle(color: Colors.purple, fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: goBack),
    );
  }
}
