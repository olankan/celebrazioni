import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';

extension SizedBoxExtension on SizedBox {
  SizedBox addFormLabel({required String label, required bool isRequired}) {
    return SizedBox(
      width: this.width,
      height: this.height,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
            height: 18.h,
            width: this.width,
            child: isRequired
                ? RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(text: label),
                        TextSpan(
                          text: ' *',
                          // style: CustomTextStyles.body2Poppins_13x4
                          //     .copyWith(color: appTheme.redA700),
                        )
                      ],
                      style: CustomTextStyles.body2Poppins_13x4,
                    ),
                  )
                : Text(
                    label,
                    style: CustomTextStyles.body2Poppins_13x4,
                  )),
        // 8.h.spacingH,
        this.child!,
      ]),
    );
  }
}
