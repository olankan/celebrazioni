import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class AgreementScreen extends StatelessWidget {
  const AgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 135.h,
                  width: double.infinity,
                  color: PrimaryColors.primary,
                  child: SvgPicture.asset('assets/images/three_fruits.svg'),
                ),
              ],
            ),
            Positioned(
              bottom: 6.h,
              child: Container(
                width: 428.w,
                decoration: BoxDecoration(
                    color: PrimaryColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        topRight: Radius.circular(16.r))),
                child: Container(
                  height: 766.h,
                  margin: EdgeInsets.symmetric(horizontal: 32.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        61.verticalSpace,
                        Text(
                          'Before you join celebrazioni',
                          style: CustomTextStyles.boldH5Poppins_24x7.copyWith(
                            color: PrimaryColors.black,
                          ),
                        ),
                        24.verticalSpace,
                        CustomContainer(
                          backgroundColor: PrimaryColors.agreementBg,
                          height: 473.h,
                          width: 365.w,
                          child: CustomContainer(
                            margin: EdgeInsets.symmetric(
                              horizontal: 18.01.w,
                            ),
                            backgroundColor: PrimaryColors.transparent,
                            width: 330.w,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  8.verticalSpace,
                                  Text(
                                      '''celebrazioni is all about connecting neighbors to share more, and waste less. Because strong \nlocal communities are critical for our planet, \nand our well-being. \n\nPlease agree to our community pledge:
                                                                ''',
                                      style: CustomTextStyles.body1Poppins_14x4
                                          .copyWith(
                                              color: PrimaryColors.black)),
                                  16.verticalSpace,
                                  ReusableJoincelebrazioniInfo(
                                    title: 'Communication',
                                    text:
                                        'Be clear, be polite, be friendly. Always.',
                                    icon: 'Chat.svg',
                                  ),
                                  17.verticalSpace,
                                  ReusableJoincelebrazioniInfo(
                                    title: 'Time',
                                    text:
                                        'Keep your commitments. No-shows are \nnot cool and not tolerated.',
                                    icon: 'Time.svg',
                                  ),
                                  17.verticalSpace,
                                  ReusableJoincelebrazioniInfo(
                                    title: 'Posts',
                                    text:
                                        'Keep them friendly, positive and constructive at all times.',
                                    icon: 'Heart.svg',
                                  ),
                                  20.verticalSpace,
                                  Text(
                                    'If you agree to stick by our rules, then come \non in...',
                                    style: CustomTextStyles.body1Poppins_14x7
                                        .copyWith(color: PrimaryColors.black),
                                  ),
                                  25.verticalSpace,
                                ],
                              ),
                            ),
                          ),
                        ),
                        24.verticalSpace,
                        CustomContainer(
                          height: 45.h,
                          width: 364.w,
                          backgroundColor: PrimaryColors.primary,
                          radius: 3.r,
                          onTap: () {
                            context.push('/locationOnboarding');
                          },
                          child: Center(
                            child: Text(
                              'I agree',
                              style: CustomTextStyles.body1Poppins_16x5,
                            ),
                          ),
                        ),
                        24.verticalSpace,
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Cancel sign up',
                            style: CustomTextStyles.body1Poppins_16x5.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: PrimaryColors.red,
                                color: PrimaryColors.red),
                          ),
                        ),
                        60.verticalSpace
                      ],
                    ),
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

class ReusableJoincelebrazioniInfo extends StatelessWidget {
  const ReusableJoincelebrazioniInfo({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
  });
  final String title;
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/$icon',
              color: PrimaryColors.primary,
              fit: BoxFit.scaleDown,
            ),
            8.8.horizontalSpace,
            SizedBox(
              width: 290.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: CustomTextStyles.body1Poppins_14x6
                        .copyWith(color: PrimaryColors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 32.8.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: CustomTextStyles.body1Poppins_14x4.copyWith(
                color: PrimaryColors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
