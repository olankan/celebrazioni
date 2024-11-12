// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_buttom_sheets/bottom_sheet.widget.dart';

import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/project/_widgets/custom_elevated_button.dart';
import 'package:celebrazioni/project/_widgets/custom_textfield.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset('assets/images/auth_bg.svg')),
            SingleChildScrollView(
              child: Container(
                color: Colors.white.withOpacity(0.8),
                child: Column(
                  children: [
                    Container(
                      color: PrimaryColors.primary.withOpacity(0.08),
                      height: 95.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          18.horizontalSpace,
                          GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: PrimaryColors.black,
                            ),
                          ),
                          26.horizontalSpace,
                          CustomContainer(
                            height: 53.h,
                            width: 53.w,
                            backgroundColor: PrimaryColors.primary,
                            showImage: true,
                            imageUrl: 'assets/images/user.png',
                            imageScale: 1.r,
                          ),
                          15.horizontalSpace,
                          SizedBox(
                            height: 68.h,
                            width: 227.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Join celebrazioni',
                                  style: CustomTextStyles.boldH6Poppins_18x5
                                      .copyWith(color: PrimaryColors.black),
                                ),
                                Text(
                                  'Let’s start with creating an account',
                                  style: CustomTextStyles.boldH6Poppins_12x4
                                      .copyWith(color: PrimaryColors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    56.horizontalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          37.verticalSpace,
                          CustomContainer(
                            height: 48.h,
                            width: 315.w,
                            backgroundColor: PrimaryColors.textfield,
                            borderColor: Colors.transparent,
                            child: CustomTextField.textArea(
                              showPrefixIcon: true,
                              textColor: Colors.black,
                              verticalContentPadding: 5.h,
                              placeHolder: 'First name',
                              prefixIcon: SvgPicture.asset(
                                'assets/images/user.svg',
                                color: Colors.black,
                                fit: BoxFit.scaleDown,
                              ),
                              hintStyle: CustomTextStyles.textFieldPoppins_14x4
                                  .copyWith(
                                color: Color(0xffA8A8A8),
                              ),
                            ),
                          ),
                          20.verticalSpace,
                          CustomContainer(
                            height: 48.h,
                            width: 315.w,
                            backgroundColor: PrimaryColors.textfield,
                            borderColor: Colors.transparent,
                            child: CustomTextField.textArea(
                              showPrefixIcon: true,
                              textColor: Colors.black,
                              verticalContentPadding: 5.h,
                              placeHolder: 'Last name',
                              prefixIcon: SvgPicture.asset(
                                'assets/images/user.svg',
                                color: Colors.black,
                                fit: BoxFit.scaleDown,
                              ),
                              hintStyle: CustomTextStyles.textFieldPoppins_14x4
                                  .copyWith(
                                color: Color(0xffA8A8A8),
                              ),
                            ),
                          ),
                          20.verticalSpace,
                          CustomContainer(
                            height: 48.h,
                            width: 315.w,
                            backgroundColor: PrimaryColors.textfield,
                            borderColor: Colors.transparent,
                            child: CustomTextField.textArea(
                              showPrefixIcon: true,
                              textColor: Colors.black,
                              verticalContentPadding: 5.h,
                              placeHolder: 'Email',
                              prefixIcon: SvgPicture.asset(
                                // getAssetSvg(icon: "search_icon"),
                                'assets/images/Message.svg',
                                color: Colors.black,
                                fit: BoxFit.scaleDown,
                              ),
                              hintStyle: CustomTextStyles.textFieldPoppins_14x4
                                  .copyWith(
                                color: Color(0xffA8A8A8),
                              ),
                            ),
                          ),
                          20.verticalSpace,
                          CustomContainer(
                            height: 48.h,
                            width: 315.w,
                            backgroundColor: PrimaryColors.textfield,
                            borderColor: Colors.transparent,
                            child: CustomTextField.password(
                              textColor: Colors.white,
                              verticalContentPadding: 5.h,
                              placeHolder: 'Password',
                              showPrefixIcon: true,
                              prefixIcon: SvgPicture.asset(
                                'assets/images/Lock.svg',
                                color: Colors.black,
                                fit: BoxFit.scaleDown,
                              ),
                              showSuffixIcon: true,
                              suffixIcon: Icon(
                                Icons.visibility_outlined,
                                size: 16.r,
                                color: PrimaryColors.black,
                              ),
                              hintStyle: CustomTextStyles.textFieldPoppins_14x4
                                  .copyWith(
                                color: Color(0xffA8A8A8),
                              ),
                            ),
                          ),
                          96.verticalSpace,
                          CustomContainer(
                            height: 45.h,
                            width: 364.w,
                            backgroundColor:
                                PrimaryColors.primary.withOpacity(1),
                            radius: 3.r,
                            onTap: () {
                              context.push('/dashboard');
                            },
                            child: Center(
                              child: Text(
                                'Join now',
                                style: CustomTextStyles.body1Poppins_16x5,
                              ),
                            ),
                          ),
                          // CustomElevatedButton(onPressed: () {}, text: 'text'),
                          25.verticalSpace,
                          CustomContainer(
                            height: 45.h,
                            width: 364.w,
                            borderColor: PrimaryColors.grayBorder,
                            backgroundColor: PrimaryColors.transparent,
                            radius: 3.r,
                            onTap: () {
                              // context.go('/signin');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  // getAssetSvg(icon: "search_icon"),
                                  'assets/images/google.svg',

                                  fit: BoxFit.scaleDown,
                                ),
                                10.horizontalSpace,
                                Text(
                                  'Sign up with Google',
                                  style: CustomTextStyles.body1Poppins_16x5
                                      .copyWith(color: PrimaryColors.black),
                                ),
                              ],
                            ),
                          ),
                          80.verticalSpace,
                          RichText(
                              text: TextSpan(
                                  text:
                                      '''By joining, I agree to celebrazioni’s ''',
                                  style: CustomTextStyles.body1Poppins_14x4
                                      .copyWith(
                                    color: PrimaryColors.black,
                                    height: getLineHeight(
                                        lineHeight: 22.4.h, fontSize: 14.sp),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'terms and conditions,\n privacy policy ',
                                      style: CustomTextStyles.body1Poppins_14x4
                                          .copyWith(
                                              height: getLineHeight(
                                                  lineHeight: 22.4.h,
                                                  fontSize: 14.sp),
                                              color: PrimaryColors.black,
                                              decoration:
                                                  TextDecoration.underline),
                                    ),
                                    TextSpan(
                                      text: 'and ',
                                      style: CustomTextStyles.body1Poppins_14x4
                                          .copyWith(
                                        height: getLineHeight(
                                            lineHeight: 22.4.h,
                                            fontSize: 14.sp),
                                        color: PrimaryColors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'end user licence agreement. ',
                                      style: CustomTextStyles.body1Poppins_14x4
                                          .copyWith(
                                              height: getLineHeight(
                                                  lineHeight: 22.4.h,
                                                  fontSize: 14.sp),
                                              color: PrimaryColors.black,
                                              decoration:
                                                  TextDecoration.underline),
                                    ),
                                    TextSpan(
                                      text:
                                          'I \nalso consent to receive celebrazioni marketing emails \nwhich I can opt out of at any time.',
                                      style: CustomTextStyles.body1Poppins_14x4
                                          .copyWith(
                                        height: getLineHeight(
                                            lineHeight: 22.4.h,
                                            fontSize: 14.sp),
                                        color: PrimaryColors.black,
                                      ),
                                    ),
                                  ])),
                          57.verticalSpace,
                          GestureDetector(
                            onTap: () => context.push('/signin'),
                            child: Center(
                                child: RichText(
                                    text: TextSpan(
                                        text: '''Already have an account? ''',
                                        style: CustomTextStyles
                                            .body1Poppins_16x6
                                            .copyWith(
                                                color: PrimaryColors.black),
                                        children: [
                                          TextSpan(
                                            text: 'Login',
                                            style: CustomTextStyles
                                                .body1Poppins_16x6
                                                .copyWith(
                                                    color: PrimaryColors.black,
                                                    decoration: TextDecoration
                                                        .underline),
                                          )
                                        ]))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
