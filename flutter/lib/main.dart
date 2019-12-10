import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

Widget Function(Widget) s = (Widget t) => Scaffold(body: SafeArea(child: t));

class DemoApp extends StatelessWidget {
  const DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DemoApp",
      home: s(HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
