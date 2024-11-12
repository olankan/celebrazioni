import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/presentation/Add%20free%20listing/Free%20food/providers/providers.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/project/_widgets/custom_textfield.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class FreeFood extends ConsumerWidget {
  FreeFood({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantityIndex = ref.watch(freeFoodQuantityProvider);
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
                    'Free Food',
                    style: CustomTextStyles.boldH6Poppins_18x5
                        .copyWith(color: PrimaryColors.black),
                  ),
                  15.horizontalSpace,
                ],
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        height: 54.h,
                        width: 54.w,
                        'assets/images/iceCream.png',
                      ),
                      9.horizontalSpace,
                      Image.asset(
                        height: 54.h,
                        width: 54.w,
                        'assets/images/food.png',
                      ),
                      9.horizontalSpace,
                      CustomContainer(
                        backgroundColor: PrimaryColors.transparent,
                        borderColor: PrimaryColors.black.withOpacity(0.2),
                        height: 54.h,
                        width: 54.w,
                        radius: 30.r,
                        child: Image.asset(
                          'assets/images/camera.png',
                        ),
                      ),
                      17.5.horizontalSpace,
                      Text('Add up to 10 images',
                          style: CustomTextStyles.body1Poppins_14x4
                              .copyWith(color: PrimaryColors.black)),
                    ],
                  ),
                  33.verticalSpace,
                  Text(
                    'Title',
                    style: CustomTextStyles.body1Poppins_14x6
                        .copyWith(color: PrimaryColors.black),
                  ),
                  12.verticalSpace,
                  CustomContainer(
                    height: 55.h,
                    width: 364.w,
                    radius: 15.r,
                    backgroundColor: PrimaryColors.white,
                    borderColor: Color(0xffE8EFF6),
                    child: CustomTextField.textArea(
                      placeHolder: 'Summarize the item in 3 words ',
                    ),
                  ),
                  33.verticalSpace,
                  Text(
                    'Description',
                    style: CustomTextStyles.body1Poppins_14x6
                        .copyWith(color: PrimaryColors.black),
                  ),
                  12.verticalSpace,
                  CustomContainer(
                    height: 55.h,
                    width: 364.w,
                    radius: 15.r,
                    backgroundColor: PrimaryColors.white,
                    borderColor: Color(0xffE8EFF6),
                    child: CustomTextField.textArea(
                      placeHolder: 'e.g. 2 x bowls of Egusi soup, BB 17th June',
                    ),
                  ),
                  33.verticalSpace,
                  Text(
                    'Quantity',
                    style: CustomTextStyles.body1Poppins_14x6
                        .copyWith(color: PrimaryColors.black),
                  ),
                  12.verticalSpace,
                  Row(
                    children: [
                      ...List.generate(5, (index) {
                        return Row(
                          children: [
                            CustomContainer(
                              height: 48.h,
                              width: 52.w,
                              backgroundColor: index == quantityIndex
                                  ? PrimaryColors.primary
                                  : Color(0xff9AA7BA),
                              child: Center(
                                child: Text(
                                  (index + 1).toString(),
                                  style: CustomTextStyles.body1BoldPoppins_16x6
                                      .copyWith(
                                    color: PrimaryColors.white,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Future.delayed(Duration(seconds: 1), () {
                                  context.push('/failedAlert');
                                });
                                ref
                                    .watch(freeFoodQuantityProvider.notifier)
                                    .state = index;
                              },
                            ),
                            18.horizontalSpace
                          ],
                        );
                      }),
                    ],
                  ),
                  20.verticalSpace,
                  CustomContainer(
                    height: 55.h,
                    width: 364.w,
                    radius: 15.r,
                    backgroundColor: PrimaryColors.white,
                    borderColor: Color(0xffE8EFF6),
                    child: CustomTextField.textArea(
                      placeHolder: 'other',
                    ),
                  ),
                  33.verticalSpace,
                  Text(
                    'Pick-up times',
                    style: CustomTextStyles.body1Poppins_14x6
                        .copyWith(color: PrimaryColors.black),
                  ),
                  12.verticalSpace,
                  CustomContainer(
                    height: 55.h,
                    width: 364.w,
                    radius: 15.r,
                    backgroundColor: PrimaryColors.white,
                    borderColor: Color(0xffE8EFF6),
                    child: CustomTextField.textArea(
                      placeHolder:
                          'e.g. Today from 4-8pm or I leave it outside.',
                    ),
                  ),
                  33.verticalSpace,
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/Maps.png',
                        height: 135.h,
                        width: double.infinity,
                      ),
                      Positioned(
                        top: 40.h,
                        left: 12.w,
                        child: CustomContainer(
                          width: 342.w,
                          backgroundColor: PrimaryColors.white,
                          child: Row(
                            children: [
                              28.horizontalSpace,
                              SvgPicture.asset(
                                'assets/images/Search.svg',
                                fit: BoxFit.scaleDown,
                              ),
                              19.horizontalSpace,
                              CustomContainer(
                                  backgroundColor: PrimaryColors.white,
                                  width: 200.w,
                                  child: CustomTextField.textArea(
                                    placeHolder: 'Find Your Location',
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // CustomContainer(
                  //   height: 135.h,

                  //   width: double.infinity,
                  //   child: CustomContainer(),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
