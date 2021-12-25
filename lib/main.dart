import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleApp()
    );
  }
}

class SimpleApp extends StatefulWidget {
  const SimpleApp({Key? key}) : super(key: key);

  @override
  _SimpleAppState createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {

  String box_text = "테스트 텍스트";

  void _updateText()  {
    setState(() {
      print("여기는 포인트 영역입니다.");
      box_text = "박스가 변경되었습니다.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is title"),
      ),
      body: Center(
        child: Text(box_text)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: _updateText,
      ),
    );
  }
}

