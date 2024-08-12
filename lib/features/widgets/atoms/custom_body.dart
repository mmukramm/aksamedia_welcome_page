import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  final String description;
  const CustomBody({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
