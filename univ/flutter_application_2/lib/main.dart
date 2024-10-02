import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App2());
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

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App"),
        ),
        body: Material(
            color: Colors.white,
            child: Center(
              child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.lightBlue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.android),
                    color: Colors.white,
                    onPressed: () {},
                  )),
            )),
      ),
    );
  }
}
