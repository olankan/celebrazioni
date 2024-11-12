import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/project/_widgets/custom_textfield.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                            height: 48.h,
                            width: 227.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Welcome Back 👋',
                                  style: CustomTextStyles.boldH6Poppins_18x5
                                      .copyWith(color: PrimaryColors.black),
                                ),
                                Text(
                                  'Continue from where you left off',
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
                                // getAssetSvg(icon: "search_icon"),
                                'assets/images/Lock.svg', color: Colors.black,
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
                                'Login',
                                style: CustomTextStyles.body1Poppins_16x5,
                              ),
                            ),
                          ),
                          414.verticalSpace,
                          GestureDetector(
                            onTap: () => context.push('/signup'),
                            child: Center(
                                child: RichText(
                                    text: TextSpan(
                                        text: '''Don't have an account? ''',
                                        style: CustomTextStyles
                                            .body1Poppins_16x6
                                            .copyWith(
                                                color: PrimaryColors.black),
                                        children: [
                                          TextSpan(
                                            text: 'Create one',
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
