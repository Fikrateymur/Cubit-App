import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({
    super.key,
    required this.adress,
    required this.number_1,
    required this.number_2,
  });

  final String adress;
  final String number_1;
  final String number_2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: AppColors.shadowColor,
            spreadRadius: 0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(6.21),
        ),
      ),
      width: 313,
      height: 93,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                adress,
                style: AppTypography.aboutUsText,
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number_1,
                style: AppTypography.branchNumberText,
              ),
              const SizedBox(width: 40),
              Text(
                number_2,
                style: AppTypography.branchNumberText,
              )
            ],
          ),
        ],
      ),
    );
  }
}
