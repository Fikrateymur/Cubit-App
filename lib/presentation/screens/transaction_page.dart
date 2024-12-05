import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/constants/transaction_row.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);

    return Scaffold(
      backgroundColor: AppColors.veryLightGrey,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 42,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
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
                  'Transactions',
                  style: AppTypography.ourBranchesTitle,
                ),
              ],
            ),
            const SizedBox(height: 55),
            TransactionRow(
              text: 'Lorem AZN',
              number: '1',
              date: DateFormat('yyyy-MM-dd').format(date),
            ),
            const SizedBox(height: 32),
            TransactionRow(
              text: 'Lorem AZN',
              number: '2',
              date: DateFormat('yyyy-MM-dd').format(date),
            ),
            const SizedBox(height: 32),
            TransactionRow(
              text: 'Lorem AZN',
              number: '3',
              date: DateFormat('yyyy-MM-dd').format(date),
            ),
            const SizedBox(height: 32),
            TransactionRow(
              text: 'Lorem AZN',
              number: '4',
              date: DateFormat('yyyy-MM-dd').format(date),
            ),
          ],
        ),
      ),
    );
  }
}
