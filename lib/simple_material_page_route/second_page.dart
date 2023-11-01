import 'package:flutter/material.dart';

class SecondPageDesign extends StatefulWidget {
  const SecondPageDesign({super.key});

  @override
  State<SecondPageDesign> createState() => _SecondPageDesignState();
}

class _SecondPageDesignState extends State<SecondPageDesign> {
  @override
  Widget build(BuildContext context) {
    void goBack() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Second page Design "),
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
