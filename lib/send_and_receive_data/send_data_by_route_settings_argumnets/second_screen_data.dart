import 'package:flutter/material.dart';

class SecondScreenData extends StatefulWidget {
  const SecondScreenData({super.key});

  @override
  State<SecondScreenData> createState() => _SecondScreenDataState();
}

late TextEditingController _secondTextEditingController;

class _SecondScreenDataState extends State<SecondScreenData> {
  @override
  void initState() {
    super.initState();
    _secondTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _secondTextEditingController.dispose();
    super.dispose();
  }

  String fetchedData = "";

  void fetch() {
    setState(() {
      fetchedData = ModalRoute.of(context)?.settings.arguments as String;
    });
  }

  void sendBackData() {
    Navigator.of(context).pop(_secondTextEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page Data"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(fetchedData),
            SizedBox(
              width: 500,
              child: TextField(
                controller: _secondTextEditingController,
                decoration: InputDecoration(
                    hintText:
                        "Enter the data you want's to send to the next screen",
                    border: OutlineInputBorder()),
              ),
            ),
            InkWell(
              onTap: () => sendBackData(),
              child: SizedBox(
                width: 200,
                height: 40,
                child: Text("Send Data Back"),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetch,
        child: Icon(Icons.gesture_sharp),
      ),
    );
  }
}
