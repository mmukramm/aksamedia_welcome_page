import 'package:flutter/material.dart';

class SingleIndicator extends StatelessWidget {
  final double width;
  const SingleIndicator({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: width,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
