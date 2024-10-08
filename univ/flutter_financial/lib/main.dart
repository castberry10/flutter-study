import 'package:flutter/material.dart';

void main() {
  runApp(const Financial());
}

class Financial extends StatelessWidget {
  const Financial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF181818),
      body: Center(
        child: Text(
          "abcdefedfad",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Scaffold(
  //     backgroundColor: const Color(0xFF181818),
  //     body: SingleChildScrollView(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20),
  //         child: Column(
  //           children: [
  //             const SizedBox(),
  //             Row(),
  //             const SizedBox(),
  //             Text(),
  //             const SizedBox(),
  //             const Text(),
  //             const SizedBox(),
  //             Row(),
  //             const SizedBox(),
  //             Row(),
  //             const SizedBox(),
  //             Container(),
  //             Transform.translate(),
  //             Transform.translate(),
  //           ],
  //         ),
  //       ),
  //     ),
  //   ));
  // }
}
