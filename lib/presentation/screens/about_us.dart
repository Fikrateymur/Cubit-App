import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_pictures.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
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
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: 823,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.3),
                  BlendMode.dstATop,
                ),
                image: const AssetImage(
                  AppPictures.aboutUs,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 38, top: 73),
            child: SizedBox(
              width: 254,
              height: 268,
              child: Text(
                "About \n"
                "Us",
                style: AppTypography.aboutUs,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 365),
            child: Container(
              width: 323,
              height: 497,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 60,
                  top: 61,
                  right: 36,
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci sapien nascetur vulputate ut convallis tincidunt imperdiet tortor. Pulvinar accumsan sit nunc tempor justo orci odio. Suspendisse aenean a morbi malesuada leo.',
                  style: AppTypography.aboutUsText,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
