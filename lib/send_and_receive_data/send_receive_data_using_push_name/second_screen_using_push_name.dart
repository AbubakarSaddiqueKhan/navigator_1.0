import 'package:flutter/material.dart';

class SecondPagePushName extends StatefulWidget {
  const SecondPagePushName({super.key});

  static const SECOND_PAGE = "/secondPage";

  @override
  State<SecondPagePushName> createState() => _SecondPagePushNameState();
}

late TextEditingController _textEditingController;

class _SecondPagePushNameState extends State<SecondPagePushName> {
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

  void sendDataBack() {
    Navigator.of(context).pop(_textEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    String fetchedData = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("Second Page Using Push Name"),
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
            SizedBox(
              height: 40,
            ),
            Text(fetchedData)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: sendDataBack),
    );
  }
}
