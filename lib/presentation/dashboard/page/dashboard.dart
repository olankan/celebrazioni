import 'package:celebrazioni/core/resources/constants.dart';
import 'package:celebrazioni/presentation/dashboard/model/eventTypeModel.dart';
import 'package:celebrazioni/presentation/dashboard/provider/eventsBookingStateNotifier.dart';
import 'package:celebrazioni/presentation/dashboard/widgets/bookEvents.widget.dart';
import 'package:celebrazioni/project/_widgets/custom_textfield.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/presentation/Drawer/presentation/pages/navigation_Drawer.dart';
import 'package:celebrazioni/presentation/bottomBar/bottomBar.dart';
import 'package:celebrazioni/presentation/dashboard/provider/providers.dart';
import 'package:celebrazioni/presentation/dashboard/widgets/itemsListview/itemsListview.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/project/_widgets/custom_image_view.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashBoard extends ConsumerWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventStateRef = ref.read(eventBookingStateNotifierProvider.notifier);
    return PopScope(
      onPopInvoked: (didPop) async {
        if (didPop) {
          return SystemNavigator.pop();
        }
        // SystemNavigator.pop();
      },
      child: Scaffold(
        endDrawer: MyNavigationDrawer(),
        backgroundColor: PrimaryColors.mainBg,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Column(
              children: [
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CustomContainer(
                    //   height: 45.h,
                    //   width: 45.w,
                    //   backgroundColor: PrimaryColors.primary.withOpacity(1),
                    //   child: Center(
                    //     child: Icon(
                    //       Icons.menu_rounded,
                    //       size: 25.r,
                    //       color: PrimaryColors.white,
                    //     ),
                    //   ),
                    // ),
                    Text(
                      "Hi, Nathan👋",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.body1BoldPoppins_18x6.copyWith(
                        color: PrimaryColors.black,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: PrimaryColors.primary,
                          size: 20.r,
                        ),
                        Text(
                          "Yaba, Lagos",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.body1Poppins_12x5.copyWith(
                            color: PrimaryColors.black,
                          ),
                        ),
                      ],
                    ),
                    25.horizontalSpace,
                    Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            SizedBox(
                              height: 55.h,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0.w,
                                ),
                                child: Center(
                                  child: CustomContainer(
                                    wantBoxShadow: true,
                                    showImage: true,
                                    imageUrl: 'assets/images/ola.jpg',
                                    backgroundColor: Colors.black,
                                    borderWidth: 2,
                                    borderColor: Color(0xFF25CE71),
                                    radius: 40.r,
                                    height: 45.h,
                                    width: 45.w,
                                    onTap: () {
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 35.h,
                              left: 43.w,
                              child: Stack(
                                children: [
                                  CustomContainer(
                                    backgroundColor: Color(0xFF25CE71),
                                    height: 18.h,
                                    width: 18.w,
                                    radius: 22.r,
                                    child: Icon(
                                      EvaIcons.bellOutline,
                                      color: Colors.white,
                                      size: 12.r,
                                    ),
                                  ),
                                  Positioned(
                                    left: 9.5.w,
                                    top: 3.h,
                                    child: CustomContainer(
                                      borderColor: Colors.white,
                                      borderWidth: 1,
                                      backgroundColor: Colors.red,
                                      height: 4.h,
                                      width: 4.w,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ],
                ),
                // 15.verticalSpace,
                // _buildSearchBar(),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Booked events',
                      style: CustomTextStyles.body1BoldPoppins_15x6
                          .copyWith(color: PrimaryColors.black),
                    ),
                    Text('See all',
                        style: CustomTextStyles.body1BoldPoppins_15x6
                            .copyWith(color: PrimaryColors.black)),
                  ],
                ),
                _buildEventTypes(context),

                buildItemsListview(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {
           
            showModalBottomSheet(
                context: context,
                backgroundColor: Colors.white,
                builder: (BuildContext context) => BookEventWidget());
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: PrimaryColors.primary,
        ),
      ),
    );
  }

  // ... Rest of your code
}

class FoodOptions extends StatelessWidget {
  const FoodOptions({
    super.key,
    this.icon,
    this.title,
    this.text,
    this.color,
  });

  final String? icon;
  final String? title;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      backgroundColor: Color(0xffF0F3FB),
      borderColor: PrimaryColors.transparent,
      height: 107.h,
      width: 361.w,
      onTap: () {
        context.push('/freeListing');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            17.verticalSpace,
            Text(title!,
                style: CustomTextStyles.body1Poppins_14x4
                    .copyWith(color: Color(0xff3B3B3B).withOpacity(0.3))),
            9.verticalSpace,
            Row(
              children: [
                CustomContainer(
                  height: 33.h,
                  width: 33.w,
                  radius: 22.r,
                  backgroundColor: color,
                  child: SvgPicture.asset(
                    'assets/images/$icon.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                14.horizontalSpace,
                SizedBox(
                  width: 245.w,
                  child: Text(text!,
                      style: CustomTextStyles.body1Poppins_15x4
                          .copyWith(color: PrimaryColors.black)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Row _buildSearchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomContainer(
        backgroundColor: Color(0xFFDADDE5),
        width: 303.w,
        height: 50.h,
        radius: 30.r,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/Search.svg',
              color: PrimaryColors.black,
              fit: BoxFit.scaleDown,
            ),
            19.horizontalSpace,
            Text('What would you like to request?',
                style: CustomTextStyles.body1Poppins_12x5
                    .copyWith(color: Color(0xff09051C).withOpacity(0.4))),
            40.horizontalSpace
          ],
        ),
      ),
      CustomContainer(
        height: 50.h,
        width: 50.w,
        radius: 30.r,
        backgroundColor: Color(0xFFDADDE5),
        child: SvgPicture.asset(
          'assets/images/Filter.svg',
          color: PrimaryColors.black,
          fit: BoxFit.scaleDown,
        ),
      )
    ],
  );
}

Widget _buildEventTypes(BuildContext context) {
  return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
    return SizedBox(
        width: 398.w,
        child: Column(
          children: [
            27.verticalSpace,
            Padding(
              padding: EdgeInsets.only(
                left: 1.w,
                bottom: 34.h,
              ),
              child: SizedBox(
                height: 57.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> buttonTexts = [
                      'Wedding',
                      'Cock-tail',
                      'Birthdays',
                    ];
                    List<Icon> buttomImg = [
                      Icon(
                        Icons.celebration_rounded,
                        size: 25.r,
                        color: PrimaryColors.primary,
                      ),
                      Icon(
                        Icons.fastfood_sharp,
                        size: 25.r,
                        color: PrimaryColors.primary,
                      ),
                      Icon(
                        Icons.celebration_rounded,
                        size: 25.r,
                        color: PrimaryColors.primary,
                      ),
                    ];

                    final eventTypeButton = ref.watch(eventTypeProvider);
                    final foodTypeButton = ref.watch(foodTypeButtonProvider);
                    return Row(
                      children: [
                        Stack(
                          children: [
                            CustomContainer(
                              width: 150.w,
                              radius: 30.r,
                              onTap: () {
                                ref
                                    .watch(foodTypeButtonProvider.notifier)
                                    .state = index;
                                print(eventTypeButton);
                                ref.watch(eventTypeProvider.notifier).state =
                                    buttonTexts[index];
                                print(foodTypeButton);
                                print(index);
                                print('PRESSED');
                              },
                              backgroundColor: foodTypeButton != index
                                  ? Color(0xffe7eef6).withOpacity(0.5)
                                  : Color(0xFFDADDE5),
                              borderColor: foodTypeButton != index
                                  ? Colors.black.withOpacity(0.05)
                                  : Colors.black.withOpacity(0.1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buttomImg[index],
                                  9.horizontalSpace,
                                  Text(buttonTexts[index],
                                      style: CustomTextStyles
                                          .body1BoldPoppins_16x6
                                          .copyWith(
                                        color: PrimaryColors.black,
                                      )),
                                ],
                              ),
                            ),
                            Positioned(
                                child: IgnorePointer(
                              ignoring: true,
                              child: Center(
                                child: foodTypeButton != index
                                    ? CustomContainer(
                                        backgroundColor: PrimaryColors
                                            .inactiveColor
                                            .withOpacity(0.5),
                                        height: 57.h,
                                        width: 174.w,
                                      )
                                    : SizedBox(),
                              ),
                            ))
                          ],
                        ),
                        13.horizontalSpace
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  });
}

Widget _buildPromoAdvertising(BuildContext context) {
  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 0,
    margin: EdgeInsets.all(0),
    color: PrimaryColors.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        15.w,
      ),
    ),
    child: Container(
      height: 150.h,
      width: 367.w,
      decoration: BoxDecoration(
        color: PrimaryColors.primary,
        borderRadius: BorderRadius.circular(
          15.w,
        ),
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 150.h,
              width: 325.w,
              padding: EdgeInsets.symmetric(
                horizontal: 17.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/subscribeBackground.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 59.w,
                      bottom: 30.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/grape.svg',
                      height: 80.h,
                      width: 72.w,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/tomatoes.svg',
                    height: 86.h,
                    width: 94.w,
                    alignment: Alignment.bottomLeft,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 115.w,
                      bottom: 39.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/mango.svg',
                      height: 59.h,
                      width: 40.w,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 202.w,
                right: 39.w,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 125.w,
                    child: Text(
                      "Thanksgiving\nDay Giveaway",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.body1BoldPoppins_17x6.copyWith(
                        height: 1.31,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  CustomContainer(
                    height: 32.h,
                    width: 82.w,
                    backgroundColor: PrimaryColors.white,
                    radius: 6.r,
                    onTap: () {
                      // context.push('/dashboard');
                    },
                    child: Center(
                      child: Text(
                        'Subscribe',
                        style: CustomTextStyles.body1Poppins_10x5
                            .copyWith(color: Color(0xFF0C4E8C)),
                      ),
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
