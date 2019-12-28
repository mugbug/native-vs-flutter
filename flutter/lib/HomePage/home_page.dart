import 'package:demo/HomePage/home_stateful_content.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _iosStyleWidgets() : _androidStyleWidgets();
  }

  Widget _iosStyleWidgets() {
    return CupertinoPageScaffold(
      // child: Padding(
      //   padding: EdgeInsets.all(50),
      //   child: ContentWidget(),
      // ),
      // navigationBar: CupertinoNavigationBar(
      //   middle: Text(
      //     "Flutter Demo",
      //   ),
      // ),
      // Large title example (but with scroll view)
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Flutter Demo'),
          ),
          SliverSafeArea(
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 180, horizontal: 50),
                      child: ContentWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _androidStyleWidgets() {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 180, horizontal: 50),
        child: ContentWidget(),
      ),
    ));
  }
}
