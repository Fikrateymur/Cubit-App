import 'package:cubit_example/presentation/screens/drawer_page.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonDrawer extends StatelessWidget {
  const ButtonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const DrawerPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(-1.0, 0.0),
                  ).animate(secondaryAnimation),
                  child: child,
                ),
              );
            },
            transitionDuration: const Duration(milliseconds: 600)),
      ),
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
            Icons.menu,
            size: 24,
          ),
        ),
      ),
    );
  }
}
