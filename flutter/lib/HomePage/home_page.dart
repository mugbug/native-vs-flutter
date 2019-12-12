import 'package:demo/HomePage/home_stateful_content.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Flutter Demo"),
      ),
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(50),
        child: ContentWidget(),
      )),
    );
  }
}