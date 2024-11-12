import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class ReusableOnboardingPage extends StatelessWidget {
  const ReusableOnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 56.w),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 340.w, height: 300.51.h),
          37.verticalSpace,
          Text(
              textAlign: TextAlign.center,
              title,
              style: CustomTextStyles.boldH6Poppins_18x7
                  .copyWith(color: PrimaryColors.black)),
          4.96.verticalSpace,
          Text(description,
              textAlign: TextAlign.center,
              style: CustomTextStyles.boldH6Poppins_14x4
                  .copyWith(color: PrimaryColors.black)),
          17.verticalSpace
        ],
      ),
    );
  }
}
