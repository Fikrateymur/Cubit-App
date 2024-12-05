import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class PromocodePage extends StatelessWidget {
  const PromocodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 43,
              left: 30,
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
                  'Promocodes',
                  style: AppTypography.ourBranchesTitle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 31),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Image.asset('assets/pictures/Settings_icon.png')),
            ),
          ),
          const SizedBox(height: 56),
          Center(
            child: Container(
              // alignment: Alignment.center,
              height: 173,
              width: 315,
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
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promocode',
                          style: AppTypography.favoriteProductName,
                        ),
                        Text(
                          '8Z40ZE',
                          style: AppTypography.cartTotal,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status',
                          style: AppTypography.favoriteProductName,
                        ),
                        Text(
                          'Not Used',
                          style: AppTypography.cartTotal,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Begin Campaign',
                          style: AppTypography.favoriteProductName,
                        ),
                        Text(
                          '11.15.2024',
                          style: AppTypography.cartTotal,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'End Campaign',
                          style: AppTypography.favoriteProductName,
                        ),
                        Text(
                          '15.05.2025',
                          style: AppTypography.cartTotal,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),
          Center(
            child: Image.asset(
              'assets/pictures/big_barkod.png',
            ),
          )
        ],
      ),
    );
  }
}
