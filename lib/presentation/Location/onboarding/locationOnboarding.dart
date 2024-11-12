import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 39.w),
          child: Column(
            children: [
              19.verticalSpace,
              SvgPicture.asset('assets/images/locationScreen.svg',
                  width: 315.w, height: 252.51.h),
              52.26.verticalSpace,
              Text('Hi, Kizito!',
                  style: CustomTextStyles.boldH6Poppins_26x6
                      .copyWith(color: PrimaryColors.black)),
              27.verticalSpace,
              Text('First we need to know your \nlocation',
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.boldH6Poppins_24x5
                      .copyWith(color: PrimaryColors.black)),
              27.verticalSpace,
              Text(
                  'To show you nearby listings and how \nmany neighbours are waiting to share \nwith you.',
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.boldH6Poppins_14x4
                      .copyWith(color: PrimaryColors.black)),
              62.verticalSpace,
              CustomContainer(
                height: 45.h,
                width: 364.w,
                backgroundColor: PrimaryColors.primary,
                radius: 3.r,
                onTap: () {
                  context.push('/setLocation');
                },
                child: Center(
                  child: Text(
                    'Ok, let’s go',
                    style: CustomTextStyles.body1Poppins_16x5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
