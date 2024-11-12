// ignore_for_file: prefer_const_constructors, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:celebrazioni/presentation/Drawer/presentation/provider/providers.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 336.w,
          height: 933.h,
          decoration: BoxDecoration(color: PrimaryColors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0).r,
            child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final sideBarItems = ref.watch(sideBarItemsProvider);

                final drawerIndex = ref.watch(drawerItemIndexProvider);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          wantBoxShadow: true,
                          showImage: true,
                          imageUrl: 'assets/images/kizito.png',
                          backgroundColor: Colors.black,
                          borderWidth: 2,
                          borderColor: Color(0xFF25CE71),
                          radius: 50.r,
                          height: 73.h,
                          width: 73.w,
                        ),
                        InkWell(
                          onTap: () {
                            Scaffold.of(context).closeEndDrawer();
                          },
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            color: PrimaryColors.black,
                          ),
                        )
                      ],
                    ),
                    12.verticalSpace,
                    Text('Kizito Isifeh',
                        style: CustomTextStyles.body1BoldPoppins_15x6
                            .copyWith(color: PrimaryColors.black)),
                    5.verticalSpace,
                    Text('@the-kizito-isifeh',
                        style: CustomTextStyles.body1Poppins_12x4
                            .copyWith(color: PrimaryColors.black)),
                    5.verticalSpace,
                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (int index) => SvgPicture.asset(
                            'assets/images/Star.svg',
                            color: index >= 3
                                ? PrimaryColors.primary.withOpacity(0.5)
                                : PrimaryColors.primary,
                            // fit: BoxFit.scaleDown,
                            height: 15.h,
                            width: 15.w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    Stack(
                      children: [
                        CustomContainer(
                          backgroundColor: PrimaryColors.primary,
                          height: 112.h,
                          width: 267.w,
                        ),
                        Positioned(
                          top: 30.h,
                          left: 5.w,
                          child: SvgPicture.asset(
                            'assets/images/drawerCard.svg',
                            fit: BoxFit.fill,
                            height: 83.h,
                            width: 245.w,
                          ),
                        ),
                        Positioned(
                          top: 30.h,
                          left: 90.w,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Invite your friends\n',
                                  style: CustomTextStyles.body1BoldPoppins_15x6,
                                ),
                                TextSpan(
                                  text: 'celebrazioni.com/@the-kizito\n-isifeh',
                                  style: CustomTextStyles.body1Poppins_12x4,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 430.0.h,
                      width: 204.0.w,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: sideBarItems.length,
                          itemBuilder: (context, index) {
                            final sideBarItem = sideBarItems[index];
                            // print(drawerItemText.length);
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    ref
                                        .watch(drawerItemIndexProvider.notifier)
                                        .state = index;
                                  },

                                  ///
                                  child: CustomContainer(
                                    height: 38.4.h,
                                    width: 204.0.w,
                                    radius: 4.8.r,
                                    backgroundColor: drawerIndex == index
                                        ? PrimaryColors.primary
                                        : PrimaryColors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        CustomContainer(
                                          borderColor: drawerIndex == index
                                              ? PrimaryColors.white
                                                  .withOpacity(0.5)
                                              : PrimaryColors.transparent,
                                          height: 28.h,
                                          width: 28.w,
                                          backgroundColor:
                                              PrimaryColors.primary,
                                          child: SvgPicture.asset(
                                            'assets/images/${sideBarItem.icon}.svg',
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 21.w,
                                        ),
                                        Text(sideBarItem.text,
                                            style: CustomTextStyles
                                                .body1Poppins_15x5
                                                .copyWith(
                                              color: drawerIndex == index
                                                  ? PrimaryColors.white
                                                  : PrimaryColors.black,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                18.verticalSpace
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    25.verticalSpace,
                    SizedBox(
                        width: 267.w,
                        child: Divider(
                          color: Color(0xff082552).withOpacity(0.15),
                        )),
                    CustomContainer(
                      backgroundColor: PrimaryColors.white,
                      height: 88.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/bubbleStar.svg',
                                fit: BoxFit.scaleDown,
                              ),
                              5.horizontalSpace,
                              Text(
                                'Rate Us',
                                style: CustomTextStyles.body1Poppins_15x5
                                    .copyWith(color: PrimaryColors.primary),
                              )
                            ],
                          ),
                          Text(
                            'V 1.0.0',
                            style: CustomTextStyles.body1Poppins_10x5
                                .copyWith(color: PrimaryColors.black),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
