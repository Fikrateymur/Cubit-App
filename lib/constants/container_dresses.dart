import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerDresses extends StatelessWidget {
  const ContainerDresses({
    super.key,
    required this.image,
    required this.height,
    required this.width,
  });

  final String image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: AppColors.shadowColor,
              spreadRadius: 0,
            )
          ],
        ),
        child: Image.asset(image));
  }
}
