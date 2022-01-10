import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: showHide()
    );
  }
}

class showHide extends StatefulWidget {
  const showHide({Key? key}) : super(key: key);

  @override
  _showHideState createState() => _showHideState();
}

class _showHideState extends State<showHide> {

  bool visible_val = true;

  void showWidget() {
    setState(() {
      visible_val = true;
    });
  }
  void hideWidget() {
    setState(() {
      visible_val = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("show hide")
      ),
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("SHOW"),
                onPressed: showWidget,
              ),
              RaisedButton(
                child: Text("Hide"),
                onPressed: hideWidget,
              )
              , Visibility(
                visible: visible_val,
                child: Text("This is Text", style: TextStyle(fontSize: 30.0))
              ),
              Image.asset("assets/images/profile.png")
            ]
          )
      )
    );
  }
}
