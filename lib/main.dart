import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("텍스트를 쓸 수 있습니다.", style: TextStyle(fontSize: 100))
    );
  }
}
