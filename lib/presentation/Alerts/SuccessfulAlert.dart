// ignore_for_file: prefer_const_constructors

import 'package:celebrazioni/presentation/Alerts/reusableBuildingBackground.dart';
import 'package:celebrazioni/presentation/dashboard/provider/eventsBookingStateNotifier.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SuccessfulAlert extends ConsumerWidget {
  const SuccessfulAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookEventsStateRef = ref.watch(eventBookingStateNotifierProvider);
    return ReusableBuildingBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: PrimaryColors.primary,
              radius: 70.r,
              child: SvgPicture.asset(
                'assets/images/send.svg',
                color: Colors.black,
                height: 80.h,
                width: 80.w,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 100.h,
              width: 380.w,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Event information \nsubmitted successfully!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Details sent to ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                      )),
                  TextSpan(
                      text: 'Celebrazioni@gmail.com',
                      // text: bookEventsStateRef.emailController!.text,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold)),
                ])),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () => context.go('/dashboard'),
              child: CustomContainer(
                height: 48.h,
                width: 346.w,
                backgroundColor: PrimaryColors.primary,
                radius: 4.r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Continue',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.black,
                      size: 20.r,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
