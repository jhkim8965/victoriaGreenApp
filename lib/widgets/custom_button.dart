import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? text;
  final Color? color;
  final double? size;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    this.text,
    this.color,
    this.size,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color ?? Colors.white,
      elevation: 1.0,
      onPressed: onPressed,
      child: text ?? const Text(''),
    );
  }
}
