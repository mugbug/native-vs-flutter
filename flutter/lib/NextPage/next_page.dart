import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class NextScreen extends StatelessWidget {
  const NextScreen({Key key, @required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _iosPageScafold() : _materialScafold();
  }

  Widget _iosPageScafold() {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        previousPageTitle: "Flutter Demo",
      ),
      child: Center(
        child: Text("Oi, $name!!"),
      ),
    );
  }

  Widget _materialScafold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutte Demo"),
      ),
      body: Container(
        child: Center(
          child: Text("Oi, $name!!"),
        ),
      ),
    );
  }
}
