import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});

  final String text;
  final VoidCallback? onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          fixedSize: Size(width, 50),
          elevation: 8,
          shadowColor: AppColors.shadowColor),
      child: Text(
        text,
        style: AppTypography.buttonText,
      ),
    );
  }
}
