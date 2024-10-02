import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: "Cupertino App",
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Cupertino App"),
          ),
          child: Center(
            child: Icon(CupertinoIcons.share),
          ),
        ));
  }
}
