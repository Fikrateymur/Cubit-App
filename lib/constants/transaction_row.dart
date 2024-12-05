import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class TransactionRow extends StatelessWidget {
  const TransactionRow({
    super.key,
    required this.text,
    required this.number,
    // required this.onTap,
    required this.date,
  });

  final String text;
  final String number;
  // final GestureTapCallback onTap;
  final String date;

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
      width: 330,
      height: 86,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 53),
            child: Text(
              number,
              style: AppTypography.number,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTypography.favoriteProductName,
              ),
              Text(
                'Date: $date',
                style: AppTypography.favoriteColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
