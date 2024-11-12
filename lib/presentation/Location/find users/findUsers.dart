import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class FindUsers extends StatelessWidget {
  const FindUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 28.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      17.verticalSpace,
                      Text(
                        'See how many people are near you...',
                        style: CustomTextStyles.boldH6Poppins_26x6.copyWith(
                          color: PrimaryColors.black,
                        ),
                      ),
                      22.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
            CustomContainer(
              height: 457.h,
              width: double.infinity,
              child: Placeholder(
                  color: PrimaryColors.black,
                  child: Center(
                    child: Text('Map!!!',
                        style: CustomTextStyles.boldH6Poppins_18x5.copyWith(
                          color: PrimaryColors.black,
                        )),
                  )),
            ),
            22.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0).w,
              child: Text(
                'Showing the nearest 50 (within 2km)',
                style: CustomTextStyles.boldH6Poppins_16x5.copyWith(
                  color: PrimaryColors.inActiveGreyText,
                ),
              ),
            ),
            15.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  // getAssetSvg(icon: "search_icon"),
                  'assets/images/smilingFruits.svg',

                  fit: BoxFit.scaleDown,
                ),
                Row(
                  children: [
                    Text(
                      '6',
                      style: CustomTextStyles.boldH6Poppins_80x6.copyWith(
                        color: PrimaryColors.six,
                      ),
                    ),
                    SizedBox(
                      width: 137.w,
                      child: Text(
                        'celebrazioni users near you',
                        style: CustomTextStyles.boldH6Poppins_20x5.copyWith(
                          color: PrimaryColors.six,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            26.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: CustomContainer(
                height: 45.h,
                width: 364.w,
                backgroundColor: PrimaryColors.primary,
                radius: 3.r,
                onTap: () {
                  context.go('/dashboard');
                },
                child: Center(
                  child: Text(
                    'Next',
                    style: CustomTextStyles.body1Poppins_16x5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
