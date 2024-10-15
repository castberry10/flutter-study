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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "\$5 156 192",
                    style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffE2B33A),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 50,
                          ),
                          child: Text(
                            'Transfer',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff1F2123),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 50,
                          ),
                          child: Text(
                            'Request',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 100),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Wallets",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: const Color(0xff1f2123),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Euro",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '6 428',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'EUR',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 20),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Transform.scale(
                              scale: 2.2,
                              child: Transform.translate(
                                offset: const Offset(-5, 12),
                                child: const Icon(
                                  Icons.euro_symbol_outlined,
                                  color: Colors.white,
                                  size: 88,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Dollar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '55 622',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'USD',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 20),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Transform.scale(
                                scale: 2.2,
                                child: Transform.translate(
                                  offset: const Offset(-5, 12),
                                  child: const Icon(
                                    Icons.euro_symbol_outlined,
                                    Icons.symbol
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    size: 88,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: const Color(0xff1f2123),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Euro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '6 428',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'EUR',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 20),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Transform.scale(
                                scale: 2.2,
                                child: Transform.translate(
                                  offset: const Offset(-5, 12),
                                  child: const Icon(
                                    Icons.euro_symbol_outlined,
                                    color: Colors.white,
                                    size: 88,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
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
