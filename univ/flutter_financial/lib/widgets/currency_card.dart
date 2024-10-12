import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInversted;

  final _blackColor = const Color(0xff1f2123);
  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInversted});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInversted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      // child: Padding(),
    );
  }
}
