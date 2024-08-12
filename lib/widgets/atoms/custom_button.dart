import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final bool? isShrink;
  const CustomButton({
    super.key,
    required this.text,
    required this.onClick,
    this.isShrink = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isShrink! ? double.infinity : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onClick,
        child: Text(text),
      ),
    );
  }
}
