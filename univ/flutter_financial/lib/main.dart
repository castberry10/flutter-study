import 'package:flutter/material.dart';

void main() {
  runApp(const Financial());
}

class Financial extends StatelessWidget {
  const Financial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Salena',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
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
