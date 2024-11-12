import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/presentation/Onboarding/widgets/reusableOnboardingPage.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';

import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboardingScreen extends StatelessWidget {
  MainOnboardingScreen({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) async {
        print('HHHHHHHHHHHHHHHHHHHHH$didPop');
        if (didPop) {
          return SystemNavigator.pop();
        }
        // SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: PrimaryColors.white,
        body: Center(
          child: Column(
            children: [
              79.verticalSpace,
              SizedBox(
                height: 483.h,
                // width: 315.w,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ReusableOnboardingPage(
                      title: 'Welcome to Celebrazioni',
                      description:
                          'From intimate gatherings to grand celebrations, find curated catering solutions that fit every occasion.',
                      imageUrl: 'assets/images/pic1.jpg',
                    ),
                    ReusableOnboardingPage(
                      title: 'Effortless Booking & Customization',
                      description:
                          'Easily explore menus, personalize your orders, and secure your bookings—all from your phone.',
                      imageUrl: 'assets/images/pic2.jpg',
                    ),
                    ReusableOnboardingPage(
                      title: 'Stay Connected & Informed',
                      description:
                          'Receive real-time updates on your orders and get reminders to ensure a smooth and memorable event.',
                      imageUrl: 'assets/images/pic3.jpg',
                    )
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(
                    dotHeight: 6.h,
                    dotWidth: 6.w,
                    dotColor: PrimaryColors.grayPlaceholder,
                    activeDotColor: PrimaryColors.black,
                    spacing: 6.r),
              ),
              126.verticalSpace,
              CustomContainer(
                height: 45.h,
                width: 364.w,
                backgroundColor: PrimaryColors.primary,
                radius: 3.r,
                onTap: () {
                  context.push('/signin');
                },
                child: Center(
                  child: Text(
                    'Get Started',
                    style: CustomTextStyles.body1Poppins_16x5,
                  ),
                ),
              ),
              34.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.go('/signin');
                },
                child: RichText(
                    text: TextSpan(
                        text: '''Already have an account? ''',
                        style: CustomTextStyles.body1Poppins_16x6
                            .copyWith(color: PrimaryColors.black),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: CustomTextStyles.body1Poppins_16x6.copyWith(
                                color: PrimaryColors.black,
                                decoration: TextDecoration.underline),
                          )
                        ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
