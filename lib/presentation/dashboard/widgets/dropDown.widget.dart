import 'package:celebrazioni/core/resources/constants.dart';
import 'package:celebrazioni/presentation/dashboard/provider/eventsBookingStateNotifier.dart';
import 'package:celebrazioni/presentation/dashboard/provider/providers.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DropDownWidget extends ConsumerWidget {
  const DropDownWidget({
    super.key,
    required this.dropDownValue,
  });

  final String dropDownValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        dropdownColor: PrimaryColors.primary.withOpacity(0.1),
        iconEnabledColor: PrimaryColors.primary,
        focusColor: Color(0xFF3E391E),
        elevation: 0,
        menuMaxHeight: 150.0.h,
        value: dropDownValue,
        onChanged: (String? value) {
          if (value != null) {
            ref.read(dropDownValueProvider.notifier).state = value;
            ref
                .read(eventBookingStateNotifierProvider.notifier)
                .updateEventType(value);
          }
        },
        items: eventType.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: dropDownListStyle,
            ),
          );
        }).toList(),
        icon: Padding(
          padding: EdgeInsets.only(left: 5.0.r),
          child: SvgPicture.asset(
            'assets/images/chevron-down.svg',
            height: 20.0.h,
            width: 20.0.w,
            color: Colors.black,
          ),
        ),
        isDense: true,
      ),
    );
  }
}
