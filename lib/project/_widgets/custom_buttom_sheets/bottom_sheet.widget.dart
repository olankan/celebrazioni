import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class CustomBottomModalSheet extends StatefulWidget {
  const CustomBottomModalSheet({super.key, this.child, this.height});

  final Widget? child;
  final double? height;

  @override
  State<CustomBottomModalSheet> createState() => _CustomBottomModalSheetState();
}

class _CustomBottomModalSheetState extends State<CustomBottomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.1, sigmaY: 2.1),
        child: Container(
            decoration: BoxDecoration(
              color: PrimaryColors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16.r),
              ),
            ),
            width: double.infinity,
            height: widget.height ?? 474.h,
            child: widget.child
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Center(
            //       child: Container(
            //         width: 40.w,
            //         height: 4.h,
            //         margin: EdgeInsets.symmetric(vertical: 8.r),
            //         decoration: BoxDecoration(
            //           color: PrimaryColors.neutral40,
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(10.r),
            //           ),
            //         ),
            //       ),
            //     ),
            //     widget.child ?? const SizedBox.shrink(),
            //   ],
            // )
            ));
  }
}
