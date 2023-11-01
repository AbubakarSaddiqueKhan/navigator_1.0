import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_on_generate_route/error_page.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_on_generate_route/first_on_generate_route_screen.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_on_generate_route/second_on_generate_route_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  if (settings.name == OnGenerateRouteFirstPage.onGenerateRouteFirstPage) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => OnGenerateRouteFirstPage(),
    );
  } else if (settings.name ==
      OnGenerateRouteSecondPage.onGenerateRouteSecondPage) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) =>
          OnGenerateRouteSecondPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
            .animate(animation),
        child: child,
      ),
    );
  } else {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => OnGenerateRouteErrorPage(),
    );
  }
}

class SlideTransitionPageRouteBuilder extends PageRouteBuilder {
  SlideTransitionPageRouteBuilder({
    required this.page,
    RouteSettings? routeSettings,
  }) : super(
            transitionsBuilder: (context, animation, secondaryAnimation,
                    child) =>
                SlideTransition(
                  position: Tween<Offset>(begin: Offset(1, 1), end: Offset.zero)
                      .animate(animation),
                ),
            pageBuilder: (context, animation, secondaryAnimation) => page);

  final Widget page;
}


// switch (settings.name) {
  //   case OnGenerateRouteFirstPage.onGenerateRouteFirstPage:
  //     return SlideTransitionPageRouteBuilder(
  //         page: OnGenerateRouteFirstPage(), routeSettings: settings);
  //   case OnGenerateRouteSecondPage.onGenerateRouteSecondPage:
  //     return SlideTransitionPageRouteBuilder(
  //         page: OnGenerateRouteSecondPage(), routeSettings: settings);
  //   default:
  //     return MaterialPageRoute(
  //       builder: (context) => OnGenerateRouteErrorPage(),
  //     );
  // }