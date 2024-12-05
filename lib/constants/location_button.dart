import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/presentation/screens/location_page.dart';
import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LocationPage()));
      },
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
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 21,
          child: Icon(
            color: AppColors.iconSelectedtColor,
            Icons.location_on_outlined,
            size: 24,
          ),
        ),
      ),
    );
  }
}
