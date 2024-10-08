import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Row Example"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: const Text(
                "Column 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: const Text(
                "Column 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.green,
                  width: 150,
                  height: 150,
                  padding: const EdgeInsets.all(20),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Text(
                    "Column 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  width: 150,
                  height: 150,
                  padding: const EdgeInsets.all(20),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Text(
                    "Column 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
