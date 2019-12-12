import 'package:demo/HomePage/home_page.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  const DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "DemoApp",
      home: HomePage(),
    );
  }
}