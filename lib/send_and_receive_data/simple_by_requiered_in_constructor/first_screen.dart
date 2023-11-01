import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/simple_by_requiered_in_constructor/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

late TextEditingController _textEditingController;
String dataBack = "";

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    setState(() {});
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> sendData() async {
      dataBack = await Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SecondScreen(data: _textEditingController.text),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            ScaleTransition(
          scale: animation,
          child: child,
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
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
            ),
            Text(dataBack)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: sendData),
    );
  }
}
