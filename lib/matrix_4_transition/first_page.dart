import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/page_route_builder_animations/second_page.dart';

class MatrixFirstPageDesign extends StatefulWidget {
  const MatrixFirstPageDesign({super.key});

  @override
  State<MatrixFirstPageDesign> createState() => _MatrixFirstPageDesignState();
}

class _MatrixFirstPageDesignState extends State<MatrixFirstPageDesign>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _animation = Tween<Offset>(begin: Offset.zero, end: Offset(0, -1)).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void rotateContainer() async {
    print("start");
    print("completed");
  }

  @override
  Widget build(BuildContext context) {
    void navigateToNextPage() async {
      // await
      _animationController.forward();

      Navigator.of(context).push(PageRouteBuilder(
        // the barrier color is used to set the color of the area between the two routes
        barrierColor: Colors.white,
        transitionDuration: const Duration(milliseconds: 500),
        reverseTransitionDuration: const Duration(seconds: 3),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
              position: animation
                  .drive(Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)),
              // .drive(Tween<double>(begin: 0, end: 1)),
              child: child);
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return MySecondPageDesign();
        },
      ));
    }

    return SlideTransition(
      position: _animation,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("My First Page Design"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: navigateToNextPage,
                child: Text(
                  "Go To Second Page",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 40),
                ),
              )
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: navigateToNextPage),
      ),
    );
  }
}
