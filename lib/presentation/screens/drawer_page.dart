import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/drawer_row.dart';
import 'package:cubit_example/constants/logo.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_pictures.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/presentation/screens/about_us.dart';
import 'package:cubit_example/presentation/screens/contact_us.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.veryLightGrey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: AppColors.veryLightGrey,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: AppColors.shadowColor,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const BackArrow(
                        radius: 26,
                        icon: Icon(
                          color: AppColors.baseRed,
                          Icons.cancel_outlined,
                          size: 34,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 37),
              const Padding(
                padding: EdgeInsets.only(left: 96),
                child: Logo(),
              ),
              const SizedBox(height: 61),
              const DrawerRow(
                icon: Icon(
                  Icons.language,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Languages',
                height: 40,
                languageCode: 'EN',
                padding: 44,
              ),
              const SizedBox(height: 34),
              DrawerRow(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                },
                icon: const Icon(
                  Icons.info_outline,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'About Us',
                height: 40,
                padding: 44,
              ),
              const SizedBox(height: 34),
              DrawerRow(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()));
                },
                icon: const Icon(
                  Icons.call,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Contact Us',
                height: 40,
                padding: 44,
              ),
              const SizedBox(height: 34),
              const DrawerRow(
                icon: Icon(
                  Icons.logout_sharp,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Log Out',
                height: 40,
                padding: 44,
              ),
              const SizedBox(height: 51),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 29),
                    child: Text(
                      'Social Media',
                      style: AppTypography.socialMediatext,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 51),
              const Image(image: AssetImage(AppPictures.menuIcon))
            ],
          ),
        ),
      ),
    );
  }
}
