import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class FailedAlert extends StatelessWidget {
  const FailedAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              38.verticalSpace,
              Text(
                'Oh Oh! Do you mind \ntrying again. 🙏',
                style: CustomTextStyles.boldH4Poppins_31x7
                    .copyWith(color: PrimaryColors.black),
                textAlign: TextAlign.center,
              ),
              29.verticalSpace,
              Text(
                'Could be a network downtime or \nsomething.',
                style: CustomTextStyles.boldH6Poppins_18x5
                    .copyWith(color: PrimaryColors.black),
                textAlign: TextAlign.center,
              ),
              83.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/sadAlert.svg',
                    height: 273.h,
                    width: 158.w,
                  ),
                  SvgPicture.asset(
                    'assets/images/cancelBubble.svg',
                    height: 43.8.h,
                    width: 43.w,
                  ),
                ],
              ),
              37.7.verticalSpace,
              Text(
                'celebrazioni just added 💚 to your profile',
                style: CustomTextStyles.body1Poppins_14x3
                    .copyWith(color: PrimaryColors.black),
              ),
              150.verticalSpace,
              SizedBox(
                height: 57,
                width: 326.w,
                child: Row(
                  children: [
                    CustomContainer(
                      height: 57.h,
                      width: 189.w,
                      gradient: LinearGradient(colors: [
                        Color(0xff4FE7AF),
                        Color(0xff11C4D4),
                      ]),
                      child: Center(
                        child: Text('Try again',
                            style: CustomTextStyles.body1Poppins_14x4
                                .copyWith(color: PrimaryColors.white)),
                      ),
                      onTap: () {
                        context.push('/successfulAlert');
                      },
                    ),
                    14.horizontalSpace,
                    CustomContainer(
                      width: 123.w,
                      height: 57,
                      backgroundColor: Color(0xffE8EFF6),
                      child: Center(
                        child: Text('Home Page',
                            style: CustomTextStyles.body1Poppins_14x4
                                .copyWith(color: PrimaryColors.black)),
                      ),
                      onTap: () {
                        context.go('/dashboard');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
