import 'package:celebrazioni/presentation/dashboard/provider/eventsBookingStateNotifier.dart';
import 'package:celebrazioni/presentation/dashboard/provider/providers.dart';
import 'package:celebrazioni/presentation/dashboard/widgets/dropDown.widget.dart';
import 'package:celebrazioni/project/_widgets/custom_container.dart';
import 'package:celebrazioni/project/_widgets/custom_textfield.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookEventWidget extends ConsumerWidget {
  const BookEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventBookingProvider = ref.watch(eventBookingStateNotifierProvider);
    final eventBookingStateRef =
        ref.watch(eventBookingStateNotifierProvider.notifier);
    bool areEntriesEmpty =
        eventBookingProvider.eventTitleController!.text == '' ||
            eventBookingProvider.venueController!.text == '' ||
            eventBookingProvider.amountOfGuestsController!.text == '';
    final dropDownValue = ref.watch(dropDownValueProvider);

    return CustomContainer(
        padding: EdgeInsets.only(top: 22.0.h, left: 16.w, right: 16.w),
        backgroundColor: Colors.white,
        height: 490.h,
        width: ScreenUtil().screenWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/celebrazioni1.jpeg',
                          scale: 15.r,
                        ),
                        5.verticalSpace,
                        Image.asset(
                          'assets/images/celebrazioni2.jpeg',
                          scale: 15.r,
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: DropDownWidget(dropDownValue: dropDownValue)),
                ],
              ),
              20.verticalSpace,
              Text('Title',
                  style: CustomTextStyles.body1BoldPoppins_18x6
                      .copyWith(color: PrimaryColors.black)),
              5.verticalSpace,
              CustomTextField.textArea(
                enabledBorderSideColor: PrimaryColors.black,
                placeHolder: 'E.g. Bola Weds Dotun',
                controller: eventBookingProvider.eventTitleController,
              ),
              10.verticalSpace,
              Text('Venue',
                  style: CustomTextStyles.body1BoldPoppins_18x6
                      .copyWith(color: PrimaryColors.black)),
              5.verticalSpace,
              CustomTextField.textArea(
                enabledBorderSideColor: PrimaryColors.black,
                placeHolder: 'E.g. Eko Hotel',
                controller: eventBookingProvider.venueController,
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('No. of guests',
                          style: CustomTextStyles.body1BoldPoppins_18x6
                              .copyWith(color: PrimaryColors.black)),
                      5.verticalSpace,
                      SizedBox(
                        width: 120.w,
                        child: CustomTextField.number(
                          enabledBorderSideColor: PrimaryColors.black,
                          placeHolder: 'E.g. 50',
                          controller:
                              eventBookingProvider.amountOfGuestsController,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Date/Time',
                          style: CustomTextStyles.body1BoldPoppins_18x6
                              .copyWith(color: PrimaryColors.black)),
                      5.verticalSpace,
                      CustomContainer(
                        width: 200.w,
                        borderColor: PrimaryColors.black,
                        radius: 10.r,
                        backgroundColor:
                            const Color.fromARGB(255, 233, 232, 232),
                        onTap: () async {
                          final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2030),
                          );

                          if (selectedDate != null) {
                            // Show the TimePicker after selecting a date
                            final selectedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );

                            if (selectedTime != null) {
                              // Convert TimeOfDay to a 24-hour format DateTime
                              final selectedDateTime = DateTime(
                                selectedDate.year,
                                selectedDate.month,
                                selectedDate.day,
                                selectedTime
                                    .hour, // use selectedTime.hour directly
                                selectedTime.minute,
                              );

                              // Call your update method on the notifier
                              eventBookingStateRef.updateDate(selectedDateTime);

                              eventBookingStateRef.updateTime(selectedDateTime);
                            }
                            ;
                          }
                        },
                        child: Center(
                          child: Text(
                            '${eventBookingProvider.date!} / ${eventBookingProvider.time!}',
                            style: CustomTextStyles.body1BoldPoppins_15x6
                                .copyWith(color: PrimaryColors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              20.verticalSpace,
              Align(
                alignment: Alignment.bottomRight,
                child: CustomContainer(
                  backgroundColor: areEntriesEmpty
                      ? PrimaryColors.primary.withOpacity(0.3)
                      : PrimaryColors.primary,
                  wantBoxShadow:
                      eventBookingProvider.eventTitleController!.text == ''
                          ? false
                          : true,
                  height: 40.h,
                  width: 120.w,
                  radius: 10.r,
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                  ),
                  onTap: areEntriesEmpty
                      ? () {}
                      : () {
                          context.pop(context);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  BookingInfoDialogWidget());
                          // context.pop(context);
                        },
                ),
              ),
              20.verticalSpace,
            ],
          ),
        ));
  }
}

class BookingInfoDialogWidget extends ConsumerWidget {
  const BookingInfoDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventBookingProvider = ref.watch(eventBookingStateNotifierProvider);
    final eventBookingStateRef =
        ref.watch(eventBookingStateNotifierProvider.notifier);
    final dropDownValue = ref.watch(dropDownValueProvider);
    return Center(
      child: CustomContainer(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        height: 570.h,
        width: 350.w,
        radius: 20.r,
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/celebrazioni1.jpeg',
                      scale: 15.r,
                    ),
                    5.verticalSpace,
                    Image.asset(
                      'assets/images/celebrazioni2.jpeg',
                      scale: 15.r,
                    )
                  ],
                ),
                CustomContainer(
                  // wantBoxShadow: true,
                  height: 30.h,
                  width: 80.w,
                  radius: 10.r,
                  child: Center(
                      child: Text(
                    dropDownValue,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp),
                  )),
                ),
              ],
            ),
            10.verticalSpace,
            Text(
              eventBookingProvider.eventTitleController!.text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.sp),
            ),
            2.verticalSpace,
            Text(
              'Show this ticket at the entrance.',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),
            ),
            10.verticalSpace,
            Divider(
              color: const Color(0xFFC4C4C4),
            ),
            20.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Venue',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                  ),
                ),
                2.verticalSpace,
                Text(
                  eventBookingProvider.venueController!.text,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
              ],
            ),
            20.verticalSpace,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 110.w,
                      child: Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      eventBookingProvider.date!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
                70.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      eventBookingProvider.time!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
              ],
            ),
            20.verticalSpace,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 110.w,
                      child: Text(
                        'No. of Guests',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      eventBookingProvider.amountOfGuestsController!.text,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
                70.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order No.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      'CEB-237643',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
              ],
            ),
            20.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cost',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                  ),
                ),
                2.verticalSpace,
                Text(
                  'Pending',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
              ],
            ),
            40.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(
                    // wantBoxShadow: true,
                    backgroundColor: Colors.transparent,
                    borderColor: Colors.black,
                    height: 40.h,
                    width: 140.w,
                    radius: 10.r,
                    child: Center(
                        child: Text(
                      'Save as draft',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    )),
                    onTap: () {
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) =>
                      //         BookingInfoDialogWidget());
                      // context.pop(context);
                    },
                  ),
                  CustomContainer(
                    wantBoxShadow: true,
                    height: 40.h,
                    width: 130.w,
                    radius: 10.r,
                    child: Center(
                        child: Text(
                      'Book service',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    )),
                    onTap: () {
                      context.pop(context);
                      context.push('/successfulAlert');
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) =>
                      //         BookingInfoDialogWidget());
                      // context.pop(context);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
