import 'package:flutter/cupertino.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key key, @required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
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
}
