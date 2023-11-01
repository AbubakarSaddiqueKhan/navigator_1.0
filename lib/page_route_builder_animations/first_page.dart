import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/page_route_builder_animations/second_page.dart';

class MyFirstPageDesign extends StatefulWidget {
  const MyFirstPageDesign({super.key});

  @override
  State<MyFirstPageDesign> createState() => _MyFirstPageDesignState();
}

class _MyFirstPageDesignState extends State<MyFirstPageDesign> {
  @override
  Widget build(BuildContext context) {
    void navigateToNextPage() {
      Navigator.of(context).push(PageRouteBuilder(
        // the barrier color is used to set the color of the area between the two routes
        // barrierColor: Colors.brown,
        transitionDuration: const Duration(seconds: 3),
        barrierColor: Colors.brown,

        reverseTransitionDuration: const Duration(seconds: 3),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(scale: animation, child: child);
          // FadeTransition(
          //   opacity: animation,
          //   child: ScaleTransition(
          //       scale: animation,
          //       child: RotationTransition(
          //         turns: animation,
          //         child: child,
          //       )
          //  Align(
          //   child: SizeTransition(
          //       sizeFactor: animation, axisAlignment: 0.0, child: child),
          // ),
          //       ),
          // );

          // SlideTransition(
          //   position: animation.drive(Tween<Offset>(
          //     begin: Offset(0, 1),
          //     // The offset.zero mean's the center of the screen . here the next screen will be displayed
          //     end: Offset(0, 0),
          //   )),
          //   child: FadeTransition(
          //       opacity: animation,
          //       child:
          //       // RotationTransition(
          //   turns: animation,
          //   child: child,
          // )
          //  Align(
          //   child: SizeTransition(
          //       sizeFactor: animation, axisAlignment: 0.0, child: child),
          // )
          //  ScaleTransition(
          //   scale: animation,
          //   child: child,
          // ),
          //       ),
          // );

          // Align(
          //   child: SizeTransition(
          //       sizeFactor: animation,
          //       axisAlignment: 0.0,
          //       child: RotationTransition(turns: animation, child: child)),
          // );
          // return ScaleTransition(
          //   scale: animation,
          //   child: RotationTransition(
          //     turns: animation,
          //     child: child,
          //   ),
          // child: Align(
          // child: SizeTransition(
          //   axisAlignment: 0.0,
          //   sizeFactor: animation,
          //   child: child,
          // ),
          // ),
          // );

          // return FadeTransition(
          //   opacity: animation,
          //   child: RotationTransition(
          //     turns: animation,
          //     child: child,
          //   ),
          // child: Align(
          //   alignment: Alignment.center,
          //   child: SizeTransition(
          //       sizeFactor: animation, child: child, axisAlignment: 0.0),
          // ),
          // child: ScaleTransition(
          //   scale: animation,
          //   child: child,
          // ),
          // );
          // return SlideTransition(
          //   position: animation.drive(
          //     Tween<Offset>(
          //       begin: Offset(0, 1),
          //       // The offset.zero mean's the center of the screen . here the next screen will be displayed
          //       end: Offset(0, 0),
          //     ),
          //   ),
          //   child: RotationTransition(
          //     turns: animation,
          //     child: child,
          //   ),
          // child: Align(
          //   child: SizeTransition(
          //       sizeFactor: animation, axisAlignment: -1, child: child),
          // ),
          // child: ScaleTransition(
          //   scale: animation,
          //   child: child,
          // )
          // FadeTransition(opacity: animation, child: child),
          // );

          // Rotation Transition

          // return RotationTransition(
          //   turns: animation,
          //   // The child here is the next page or next screen
          //   child: child,
          // );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          // The context is the context of the given page , screen , or route
          // The animation is the value of the animation of Animation<double> whose value is from 0 to 1
          // We can use this value to perform the animation we want
          // Here you can perform any type of transition animation you want's but the best practice is to only set the name of the next route here and perform the animation in the transition builder

          return MySecondPageDesign();

          // Size transition
          // to use the size transition wrap's in the align widget and set the alignment to zero .
          //
          // Align(
          //   child: SizeTransition(
          //     sizeFactor: animation,
          //     axisAlignment: 0.0,
          //     child: MySecondPageDesign(),
          //   ),
          // );

          // fade transition

          //  FadeTransition(
          //   opacity: animation,
          //   child: MySecondPageDesign(),
          // );
          //  Slide transition
          //  SlideTransition(
          //   position: animation.drive(

          //     Tween<Offset>(
          //       // Offset(x,y)

          //       // x => Negative ==> Slide from the left side
          //       // x => Positive ==> Slide from the right side
          //       // y => Negative ==> Slide from the upside side
          //       // y => Positive ==> Slide from the bottom side
          //       // Max value is 1 which is enough for the slide transition value

          //       begin: Offset(1, 1),
          //       // The offset.zero mean's the center of the screen . here the next screen will be displayed
          //       end: Offset(0, 0),
          //     ),
          //   ),
          //   child: MySecondPageDesign(),
          // );

          // Scale Transition
          //  ScaleTransition(
          //   scale: animation,
          //   child: MySecondPageDesign(),
          // );
        },
      ));
    }

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("My First Page Design"),
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
