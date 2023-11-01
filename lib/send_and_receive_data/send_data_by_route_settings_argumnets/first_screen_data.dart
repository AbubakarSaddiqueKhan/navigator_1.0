import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_data_by_route_settings_argumnets/second_screen_data.dart';

class FirstDataScreen extends StatefulWidget {
  const FirstDataScreen({super.key});

  @override
  State<FirstDataScreen> createState() => _FirstDataScreenState();
}

class _FirstDataScreenState extends State<FirstDataScreen> {
  void sendDataToSecondPage() {
    Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SecondScreenData(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            ScaleTransition(
              scale: animation,
              child: child,
            ),
        settings: RouteSettings(arguments: _textEditingController.text)));
  }

  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page Data Send"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 500,
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    hintText:
                        "Enter the data you want's to send to the next screen",
                    border: OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sendDataToSecondPage,
        child: Icon(Icons.send),
      ),
    );
  }
}
