import 'package:flutter/material.dart';
import 'package:flutter_navigator_1_0_practice/send_and_receive_data/send_receive_data_using_push_name/second_screen_using_push_name.dart';

class FirstScreenPushName extends StatefulWidget {
  const FirstScreenPushName({super.key});

  static const FIRST_PAGE = "/firstPage";

  @override
  State<FirstScreenPushName> createState() => _FirstScreenPushNameState();
}

late TextEditingController _textEditingController;

class _FirstScreenPushNameState extends State<FirstScreenPushName> {
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

  String result = "";

  void sendDataAndThenReceiveDataBack() async {
    result = await Navigator.of(context).pushNamed(
        SecondPagePushName.SECOND_PAGE,
        arguments: _textEditingController.text) as String;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("First Screen Using Push Name"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 500,
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    hintText: "Enter the data", border: OutlineInputBorder()),
              ),
            ),
            Text(result)
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: sendDataAndThenReceiveDataBack),
    );
  }
}
