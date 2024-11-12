import 'dart:ui';

import 'package:celebrazioni/presentation/Auth/pages/signUp/signUp.screen.dart';
import 'package:celebrazioni/presentation/dashboard/model/eventTypeModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:celebrazioni/domain/models/itemsModel.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:go_router/go_router.dart';

Widget buildItemsListview(BuildContext context) {
  List<ItemsModel> items = [
    ItemsModel(
      img: 'assets/images/Menu Photo.png',
      info: 'Best before 7pm',
      itemName: 'Double Chickwizz',
      price: 200,
    ),
    ItemsModel(
      img: 'assets/images/Menu Photo.png',
      info: 'Best before 10pm',
      itemName: 'Basmati Jollof',
      price: 100,
    ),
    ItemsModel(
      img: 'assets/images/Menu Photo.png',
      info: 'Best before 6pm',
      itemName: 'Ofada Rice',
      price: 300,
    ),
    ItemsModel(
      img: 'assets/images/Menu Photo.png',
      info: 'Best before 2pm',
      itemName: 'Ewagoyin',
      price: 150,
    ),
  ];

  return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
    final eventTypeRef = ref.watch(eventTypeProvider);
    final events = ref.watch(eventsProvider);
    final filteredEvents =
        events.where((event) => event.eventType == eventTypeRef).toList();
    // print(eventTypeRef);
    // for (var event in events) {
    //   print('Event Type: ${event.eventType}');
    // }
    return SizedBox(
      height: 543.h,
      width: 364.w,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: filteredEvents.length,
        itemBuilder: (BuildContext context, int index) {
          final event = filteredEvents[index];
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CustomContainer(
                      backgroundColor: PrimaryColors.transparent,
                      height: 350.h,
                      width: 364.w,
                      radius: 30.r,
                      onTap: () {
                        ref.watch(eventIndexProvider.notifier).state = index;
                        context.push('/eventDescription');
                      },
                      child: Column(
                        children: [
                          Expanded(
                              child: CustomContainer(
                            backgroundColor: PrimaryColors.transparent,
                            width: double.infinity,
                            radius: 60.r,
                            showImage: true,
                            imageUrl: event.imgPath,
                          )),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.r),
                          bottomRight: Radius.circular(60.r),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            width: 364.w,
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
                                      width: 240.w,
                                      child: Text(event.title,
                                          style: CustomTextStyles
                                              .boldH6Poppins_20x5
                                              .copyWith(
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 165.w,
                                          child: Text(event.location,
                                              style: CustomTextStyles
                                                  .boldH6Poppins_16x5
                                                  .copyWith(
                                                      overflow: TextOverflow
                                                          .ellipsis)),
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
                                        style: CustomTextStyles
                                            .body1Poppins_12x5
                                            .copyWith(
                                                color: PrimaryColors.black),
                                      ),
                                    ],
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                10.verticalSpace
              ],
            ),
          );
        },
      ),
    );
  });
}
