import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class AddFreeListing extends StatelessWidget {
  AddFreeListing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    'Add free listing',
                    style: CustomTextStyles.boldH6Poppins_18x5
                        .copyWith(color: PrimaryColors.black),
                  ),
                  15.horizontalSpace,
                ],
              ),
            ),
            24.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose Category',
                      style: CustomTextStyles.boldH6Poppins_16x6
                          .copyWith(color: PrimaryColors.black)),
                  37.verticalSpace,
                  FreeListingType(
                      icon: 'apple',
                      title: 'Food',
                      text: 'Give away anything you would eat \nyourself.'),
                  18.verticalSpace,
                  FreeListingType(
                      icon: 'box',
                      title: 'Non-Food',
                      text:
                          'Give away toiletries, cosmetics, kitchen \nutensils, toys, clothes, etc.')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FreeListingType extends StatelessWidget {
  const FreeListingType({
    super.key,
    required this.icon,
    required this.title,
    required this.text,
  });

  final String? icon;
  final String? title;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/freeFood');
      },
      child: SizedBox(
        height: 52.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomContainer(
                height: 33.h,
                width: 33.w,
                radius: 22.r,
                backgroundColor: Color(0xffE8EFF6),
                borderColor: Color(0xff082552).withOpacity(0.05),
                child: Image.asset(
                  'assets/images/$icon.png',
                  height: 18.h,
                  width: 15.3.w,
                )),
            26.horizontalSpace,
            SizedBox(
              width: 250.w,
              height: 52.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title!,
                      style: CustomTextStyles.body1BoldPoppins_15x6
                          .copyWith(color: PrimaryColors.black)),
                  Text(
                    text!,
                    style: CustomTextStyles.caption1Poppins_11x4
                        .copyWith(color: PrimaryColors.black, height: 1.1),
                  ),
                ],
              ),
            ),
            Radio(value: 0, groupValue: 0, onChanged: (index) {})
          ],
        ),
      ),
    );
  }
}
