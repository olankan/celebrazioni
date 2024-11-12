import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/project/_widgets/custom_textfield.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Column(
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
                        'Set your location',
                        style: CustomTextStyles.boldH6Poppins_26x6.copyWith(
                          color: PrimaryColors.black,
                        ),
                      ),
                      22.verticalSpace,
                      Text('Don’t worry, we won’t share this with anyone else.',
                          style: CustomTextStyles.boldH6Poppins_18x5.copyWith(
                            color: PrimaryColors.black,
                          )),
                      22.verticalSpace,
                      Row(
                        children: [
                          CustomContainer(
                            height: 50.h,
                            width: 303.w,
                            radius: 15.r,
                            backgroundColor: PrimaryColors.textfield,
                            child: CustomTextField.textArea(
                              placeHolder: 'search here',
                            ),
                          ),
                          14.horizontalSpace,
                          CustomContainer(
                            height: 50.h,
                            width: 50.w,
                            radius: 15.r,
                            backgroundColor: PrimaryColors.textfield,
                            child: SvgPicture.asset(
                              'assets/images/Search.svg',
                              color: Colors.black,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                      38.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: CustomContainer(
                width: double.infinity,
                child: Placeholder(
                    color: PrimaryColors.black,
                    child: Center(
                      child: Text('Map!!! Click   Me.',
                          style: CustomTextStyles.boldH6Poppins_18x5.copyWith(
                            color: PrimaryColors.black,
                          )),
                    )),
                onTap: () {
                  context.push('/findUsers');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
