import 'package:cubit_example/constants/settings_row.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/presentation/screens/promocode_page.dart';
import 'package:cubit_example/presentation/screens/transaction_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightGrey,
      body: Column(
        children: [
          const SizedBox(height: 41),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 155),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 30),
                child: Image.asset('assets/pictures/Settings.png'),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            'Fikrat Teymurov',
            style: AppTypography.cartTotal,
          ),
          const SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              width: double.infinity,
              height: 204,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                        Image.asset('assets/pictures/settings_background.jpg'),
                  ),
                  Positioned(
                    top: 24, // Place the image at the top
                    left: 241,
                    child: Image.asset('assets/pictures/barkod.png'),
                  ),
                  Positioned(
                    top: 32, // Place the image at the top
                    left: 27,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'assets/pictures/Group266.png',
                        scale: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 49),
          SettingsRow(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransactionPage(),
                ),
              );
            },
            text: 'Transactions',
            imageText: 'assets/pictures/settings_dollar.png',
          ),
          const SizedBox(height: 36),
          SettingsRow(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PromocodePage(),
                ),
              );
            },
            text: 'Promocodes',
            imageText: 'assets/pictures/settings_gift.png',
          ),
        ],
      ),
    );
  }
}
