import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class DrawerRow extends StatelessWidget {
  const DrawerRow(
      {super.key,
      required this.icon,
      required this.text,
      this.languageCode,
      required this.height,
      required this.padding,
      this.onTap});
  final Icon icon;
  final String text;
  final double height;
  final String? languageCode;
  final double padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Text(
                text,
                style: AppTypography.drawerLabelText,
              ),
              Text(
                languageCode ?? '  ',
                style: const TextStyle(
                  color: AppColors.iconSelectedtColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
