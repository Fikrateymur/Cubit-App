import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
    required this.icon,
    required this.radius,
  });
  final Icon icon;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: AppColors.shadowColor,
              spreadRadius: 0,
            )
          ],
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: radius,
          child: icon,
        ),
      ),
    );
  }
}
