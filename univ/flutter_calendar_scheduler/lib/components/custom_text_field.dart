import 'package:flutter/material.dart';
import 'package:flutter_calendar_scheduler/const/colors.dart';

class CustomTextField extends StatefulWidget {
  final String label;

  const CustomTextField({
    required this.label,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextFormField(),
      ],
    );
  }
}
