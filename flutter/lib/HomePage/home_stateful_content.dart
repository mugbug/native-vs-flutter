import 'package:demo/NextPage/next_page.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter/material.dart';


class ContentWidget extends StatefulWidget {
  ContentWidget({Key key}) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  var _fieldController = TextEditingController(text: "");

  void pushNextScreen() {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => NextScreen(
          name: _fieldController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ?_iosWidgetStyle() : _androidWidgetStyle();
  }

  Widget _iosWidgetStyle() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Text(
                  "Digite seu nome:",
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: CupertinoTextField(
                  controller: _fieldController,
                  placeholder: "Pedro",
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          CupertinoButton.filled(
            borderRadius: BorderRadius.circular(100),
            child: Center(
              child: Text("Ir!"),
            ),
            onPressed: pushNextScreen,
          ),
        ],
      ),
    );
  }

  Widget _androidWidgetStyle() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Text(
                  "Digite seu nome:",
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: TextField(
                  controller: _fieldController,
                  decoration: InputDecoration(
                    hintText: "Pedro"
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            color: Colors.blue,
            child: Center(
              child: Text("Ir!"),
            ),
            onPressed: pushNextScreen,
          ),
        ],
      ),
    );
  }
}


