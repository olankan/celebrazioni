import 'dart:ui';

import 'package:celebrazioni/core/resources/images.dart';
import 'package:celebrazioni/presentation/Auth/pages/signUp/signUp.screen.dart';
import 'package:celebrazioni/presentation/dashboard/model/eventTypeModel.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EventDescriptionScreen extends ConsumerWidget {
  const EventDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventIndex = ref.watch(eventIndexProvider);
    final eventsRef = ref.watch(eventsProvider);
    final eventTypeRef = ref.watch(eventTypeProvider);
    final filteredEvents =
        eventsRef.where((event) => event.eventType == eventTypeRef).toList();
    final event = filteredEvents[eventIndex];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            CustomContainer(
              height: 550.h,
              width: double.infinity,
              radius: 10.r,
              showImage: true,
              imageUrl: event.imgPath,
            ),
            CustomContainer(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              // padding: EdgeInsets.symmetric(horizontal: 16.w),
              radius: 0,
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.55, 0.59]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  45.verticalSpace,
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          margin: EdgeInsets.only(left: 8.w),
                          height: 45.h,
                          width: 45.w,
                          backgroundColor:
                              PrimaryColors.primary.withOpacity(0.5),
                          onTap: () {
                            context.pop(context);
                          },
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              size: 25.r,
                              color: PrimaryColors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Center(
                            child: Text(
                              event.location,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.boldH6Poppins_18x7.copyWith(
                                color: PrimaryColors.white,
                              ),
                            ),
                          ),
                        ),
                        CustomContainer(
                          margin: EdgeInsets.only(left: 8.w),
                          height: 45.h,
                          width: 45.w,
                          backgroundColor:
                              PrimaryColors.primary.withOpacity(0.5),
                          child: Center(
                            child: Icon(
                              Icons.share,
                              size: 25.r,
                              color: PrimaryColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  370.verticalSpace,
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        width: double.infinity,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: PrimaryColors.black.withOpacity(0.2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 290.w,
                                  child: Text(event.title,
                                      style: CustomTextStyles.boldH6Poppins_20x5
                                          .copyWith(
                                              overflow: TextOverflow.ellipsis)),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Text(event.location,
                                          style: CustomTextStyles
                                              .boldH6Poppins_16x5
                                              .copyWith(
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                    ),
                                    10.horizontalSpace,
                                    Text(event.time,
                                        style: CustomTextStyles
                                            .boldH6Poppins_16x5),
                                    5.horizontalSpace
                                  ],
                                ),
                              ],
                            ),
                            CustomContainer(
                              width: 70.w,
                              backgroundColor: PrimaryColors.white,
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    event.guests,
                                    style: CustomTextStyles
                                        .body1BoldPoppins_15x7
                                        .copyWith(
                                            color: PrimaryColors.black,
                                            height: 1),
                                  ),
                                  Text(
                                    'Guests',
                                    style: CustomTextStyles.body1Poppins_12x5
                                        .copyWith(color: PrimaryColors.black),
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // 0.verticalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200.w,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        event.day,
                                        style: CustomTextStyles
                                            .body1BoldPoppins_15x7
                                            .copyWith(
                                                color: PrimaryColors.white,
                                                height: 1),
                                      ),
                                      5.verticalSpace,
                                      Text(
                                        event.month,
                                        style: CustomTextStyles
                                            .body1Poppins_12x5
                                            .copyWith(
                                                color: PrimaryColors.white
                                                    .withOpacity(0.8),
                                                height: 1),
                                      ),
                                    ],
                                  ),
                                  20.horizontalSpace,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        event.weekDay,
                                        style: CustomTextStyles
                                            .body1BoldPoppins_15x7
                                            .copyWith(
                                                color: PrimaryColors.white,
                                                height: 1),
                                      ),
                                      5.verticalSpace,
                                      Text(
                                        "${event.time} - End",
                                        style: CustomTextStyles
                                            .body1Poppins_12x5
                                            .copyWith(
                                                color: PrimaryColors.white
                                                    .withOpacity(0.8),
                                                height: 1),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CustomContainer(
                              height: 42.h,
                              width: 40.w,
                              backgroundColor:
                                  PrimaryColors.white.withOpacity(0.4),
                              onTap: () {
                                showDatePicker(
                                    context: context,
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2025));
                              },
                              child: Center(
                                child: Icon(
                                  Icons.calendar_month_rounded,
                                  size: 25.r,
                                  color: PrimaryColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                          child: CustomContainer(
                            height: 290.h,
                            width: MediaQuery.of(context).size.width,
                            backgroundColor: Colors.transparent,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'About this event:  ',
                                          style: CustomTextStyles
                                              .body1BoldPoppins_15x7
                                              .copyWith(
                                                  color: PrimaryColors.white,
                                                  height: 1.3),
                                          children: [
                                        TextSpan(
                                          text: event.about,
                                          style: CustomTextStyles
                                              .body1BoldPoppins_15x4
                                              .copyWith(
                                                  color: PrimaryColors.white
                                                      .withOpacity(0.8),
                                                  height: 1.3),
                                        )
                                      ])),
                                  5.verticalSpace,
                                  Text(
                                    'Our Services',
                                    style: CustomTextStyles
                                        .body1BoldPoppins_15x7
                                        .copyWith(
                                            color: PrimaryColors.white,
                                            height: 1.3),
                                  ),
                                  5.verticalSpace,
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50.h,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: event.serviceImages.length,
                                          itemBuilder:
                                              (BuildContext context, index) {
                                            final imagePath =
                                                event.serviceImages[index];
                                            return Row(
                                              children: [
                                                CustomContainer(
                                                  height: 50.h,
                                                  radius: 10.r,
                                                  backgroundColor: Colors.black,
                                                  showImage: true,
                                                  imageUrl: imagePath,
                                                  onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                                context) =>
                                                            Center(
                                                              child:
                                                                  ImageDialog(
                                                                imagePath:
                                                                    imagePath,
                                                              ),
                                                            ));
                                                  },
                                                ),
                                                5.horizontalSpace
                                              ],
                                            );
                                          }))
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ImageDialog extends StatelessWidget {
  const ImageDialog({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      borderColor: const Color(0xFFA8A4A4).withOpacity(0.5),
      borderWidth: 7,
      height: 400.h,
      width: 350.w,
      radius: 60,
      showImage: true,
      imageUrl: imagePath,
    );
  }
}
