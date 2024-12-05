import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/location_row.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.veryLightGrey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 37,
              ),
              child: Row(
                children: [
                  BackArrow(
                    radius: 21,
                    icon: Icon(
                      color: AppColors.baseRed,
                      Icons.arrow_back,
                      size: 34,
                    ),
                  ),
                  SizedBox(width: 44),
                  Text(
                    'Our Branches',
                    style: AppTypography.ourBranchesTitle,
                  )
                ],
              ),
            ),
            SizedBox(height: 48),
            LocationRow(
              adress: 'Babek Plaza, Blok C,3-cu mertebe',
              number_1: '+994 50 556 11 00',
              number_2: '+994 50 556 11 00',
            ),
            SizedBox(height: 30),
            LocationRow(
              adress: 'Ahmed Jamil street 41A/57',
              number_1: '+994 50 556 11 00',
              number_2: '+994 50 556 11 00',
            ),
            SizedBox(height: 30),
            LocationRow(
              adress: 'Jabbarqaryagdioglu street , 23 B/50',
              number_1: '+994 50 556 11 00',
              number_2: '+994 50 556 11 00',
            ),
          ],
        ),
      ),
    );
  }
}
