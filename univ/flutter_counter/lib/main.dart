import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    print('createState() 호출');
    return _AppState();
  }
  // State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late int _counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = 0;
    print('InitState 호출');
  }

  void onClick() {
    // _counter++;
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click count",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "$_counter",
                style: const TextStyle(fontSize: 30),
              ),
              IconButton(
                onPressed: onClick,
                icon: const Icon(Icons.add),
                iconSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
