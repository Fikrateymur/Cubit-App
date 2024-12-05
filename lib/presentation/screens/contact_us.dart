import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/button.dart';
import 'package:cubit_example/constants/drawer_row.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/presentation/screens/about_us.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.veryLightGrey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
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
              const SizedBox(height: 54),
              const DrawerRow(
                icon: Icon(
                  Icons.perm_contact_cal_rounded,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Name',
                height: 40,
                padding: 55,
              ),
              const SizedBox(height: 18),
              DrawerRow(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                },
                icon: const Icon(
                  Icons.mail_outline,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Mail',
                height: 40,
                padding: 55,
              ),
              const SizedBox(height: 18),
              const DrawerRow(
                icon: Icon(
                  Icons.call,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Phone Number',
                height: 40,
                padding: 55,
              ),
              const SizedBox(height: 18),
              const DrawerRow(
                icon: Icon(
                  Icons.more_horiz,
                  color: AppColors.iconSelectedtColor,
                  size: 23,
                ),
                text: 'Message',
                height: 40,
                padding: 55,
              ),
              const SizedBox(height: 63),
              Button(
                text: 'Send Message',
                onPressed: () {},
                width: 201.93,
              ),
              const SizedBox(height: 58.1),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 44),
                    child: Text(
                      'Addidional Info',
                      style: AppTypography.socialMediatext,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              const Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 34,
                  right: 22,
                  bottom: 26,
                ),
                child: DrawerRow(
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: AppColors.iconSelectedtColor,
                  ),
                  text: 'Yasamal Rayonu, Sherifzade \n'
                      'Street 7I',
                  height: 86,
                  padding: 33,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 34,
                  right: 22,
                  bottom: 26,
                ),
                child: DrawerRow(
                  icon: Icon(
                    Icons.language,
                    color: AppColors.iconSelectedtColor,
                  ),
                  text: 'Loremipsum.az',
                  height: 86,
                  padding: 33,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 34,
                  right: 22,
                  bottom: 26,
                ),
                child: DrawerRow(
                  icon: Icon(
                    Icons.mail,
                    color: AppColors.iconSelectedtColor,
                  ),
                  text: 'Loremipsum@gmail.com',
                  height: 86,
                  padding: 33,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 34,
                  right: 22,
                  bottom: 26,
                ),
                child: DrawerRow(
                  icon: Icon(
                    Icons.call,
                    color: AppColors.iconSelectedtColor,
                  ),
                  text: '+994 70 281 23 56',
                  height: 86,
                  padding: 33,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
