import 'package:flutter/material.dart';

class MatrixSecondPageDesign extends StatefulWidget {
  const MatrixSecondPageDesign({super.key});

  @override
  State<MatrixSecondPageDesign> createState() => _MatrixSecondPageDesignState();
}

class _MatrixSecondPageDesignState extends State<MatrixSecondPageDesign> {
  @override
  Widget build(BuildContext context) {
    void goBack() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("My Second page Design "),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: goBack,
              child: Text(
                "Go to First Page",
                style: TextStyle(color: Colors.purple, fontSize: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
