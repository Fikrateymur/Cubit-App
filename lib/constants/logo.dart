import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_pictures.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 4.2,
                  spreadRadius: 0,
                  offset: Offset(1.4, 2.8),
                ),
              ],
            ),
            width: 61.77,
            height: 56.07,
            child: ClipOval(
              child: FittedBox(
                // fit: BoxFit.cover,
                child: Image.asset(
                  AppPictures.splashPicture,
                  width: 95,
                  height: 95,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Text('Logo', style: AppTypography.textLogo),
      ],
    );
  }
}
