import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  const SettingsRow({
    super.key,
    required this.text,
    required this.imageText,
    required this.onTap,
  });

  final String text;
  final String imageText;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      width: 315,
      height: 86,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 53),
              child: Image.asset(imageText),
            ),
            Text(
              text,
              style: AppTypography.cartTotal,
            )
          ],
        ),
      ),
    );
  }
}
