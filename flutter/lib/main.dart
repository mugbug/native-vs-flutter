import 'package:demo/HomePage/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  const DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _cupertinoApp() : _materialApp();
  }

  Widget _cupertinoApp(){
    return CupertinoApp(
      title: "DemoApp",
      home: HomePage(),
    );
  }

  Widget _materialApp(){
    return MaterialApp(
      title: "DemoApp",
      home: HomePage(),
    );
  }
}