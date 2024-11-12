// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? placeHolder;
  final List<TextInputFormatter>? inputFormat;
  final Function(String? e)? onsave;
  final Function(String? e)? onchange;
  final FocusNode? focusnode;
  final bool? maskText;
  final String? Function(String? e)? isvalid;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? isEditable;
  final Color? textColor;
  final Color? enabledBorderSideColor;
  final int? maxLines;
  final double? verticalContentPadding;
  final InputDecoration? decoration;
  final Function()? hideShowText;
  final String? error;
  final bool? showError;
  final bool? showPrefixIcon;
  final bool? showSuffixIcon;
  final bool? isPassword;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  CustomTextField({
    Key? key,
    this.label,
    this.inputFormat,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.controller,
    this.maskText,
    //  this.maxLines,
    this.isEditable,
    this.keyboardType = TextInputType.text,
    this.focusnode,
    this.verticalContentPadding,
    this.decoration,
    this.hideShowText,
    this.showError = false,
    this.error,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.enabledBorderSideColor,
  })  : showPrefixIcon = false,
        showSuffixIcon = false,
        isPassword = false,
        maxLines = 1,
        super(key: key);

  CustomTextField.search({
    Key? key,
    this.label,
    this.inputFormat,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.controller,
    this.maskText,
    this.isEditable,
    this.keyboardType,
    this.maxLines,
    this.focusnode,
    this.verticalContentPadding,
    this.decoration,
    this.showError = false,
    this.error,
    this.hideShowText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.enabledBorderSideColor,
  })  : showPrefixIcon = true,
        showSuffixIcon = false,
        isPassword = false,
        super(key: key);

  CustomTextField.password({
    Key? key,
    this.label,
    this.inputFormat,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.controller,
    this.isEditable,
    this.focusnode,
    this.showPrefixIcon,
    this.showSuffixIcon = true,
    this.verticalContentPadding,
    this.decoration,
    this.hideShowText,
    this.showError = false,
    this.error,
    this.maskText = true,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.enabledBorderSideColor,
  })  : maxLines = 1,
        isPassword = true,
        keyboardType = TextInputType.visiblePassword,
        super(key: key);

  CustomTextField.number({
    Key? key,
    this.label,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.maskText,
    this.controller,
    this.maxLines,
    this.isEditable,
    this.focusnode,
    this.verticalContentPadding,
    this.decoration,
    this.showError = false,
    this.error,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.enabledBorderSideColor,
  })  : keyboardType = TextInputType.phone,
        hideShowText = null,
        showPrefixIcon = false,
        showSuffixIcon = false,
        isPassword = false,
        inputFormat = [FilteringTextInputFormatter.digitsOnly],
        super(key: key);

  CustomTextField.textArea({
    Key? key,
    this.hintStyle,
    this.label,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.maskText,
    this.controller,
    this.maxLines,
    this.isEditable,
    this.focusnode,
    this.inputFormat,
    this.decoration,
    this.showError = false,
    this.error,
    this.verticalContentPadding,
    this.showPrefixIcon = false,
    this.prefixIcon,
    this.suffixIcon,
    this.enabledBorderSideColor,
  })  : keyboardType = TextInputType.text,
        isPassword = false,
        showSuffixIcon = false,
        hideShowText = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEditable,
      key: key,
      controller: controller,
      focusNode: focusnode,
      inputFormatters: inputFormat == null ? [] : [...inputFormat!],
      onSaved: onsave,
      validator: isvalid,
      onChanged: onchange,
      maxLines: maxLines,
      obscureText: maskText ?? false,
      obscuringCharacter: "*",
      keyboardType: keyboardType ?? TextInputType.text,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Colors.grey,
      style:
          CustomTextStyles.semiBoldH3Poppins_12x5.copyWith(color: Colors.black),
      decoration: decoration ??
          InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: enabledBorderSideColor ?? PrimaryColors.primary,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: PrimaryColors.primary)),
            // fillColor: AppColors.blueOvelay.withOpacity(0.4.sp),
            contentPadding: EdgeInsets.fromLTRB(
                16.0.w, 0.h, 16.0.w, verticalContentPadding ?? 15.h),
            // EdgeInsets.symmetric(
            //     vertical: contentPadding ?? 18.0.h, horizontal: 16.0.w),
            errorStyle: showError!
                ? TextStyle(height: 0.0.sp, fontSize: 0.0.sp)
                : const TextStyle().copyWith(fontSize: 11.0.sp),
            hintText: placeHolder ?? '',
            hintStyle: hintStyle,
            prefixIcon: showPrefixIcon!
                ? (prefixIcon ??
                    Icon(
                      Icons.visibility_outlined,
                      size: 16.r,
                      color: PrimaryColors.black,
                    ))
                : null,
            suffixIcon: showSuffixIcon!
                ? (suffixIcon ??
                    Icon(
                      Icons.visibility_outlined,
                      size: 16.r,
                      color: PrimaryColors.black,
                    ))
                : null,
            // suffixIcon: !isPassword!
            //     ? null
            //     : maskText == false
            //         ? GestureDetector(
            //             onTap: hideShowText,
            //             child: Transform.scale(
            //               scale: 0.5.sp,
            //               child: SvgPicture.asset(
            //                   // getAssetSvg(icon: "eye_hidden_icon"),
            //                   'assets/icons/questpro.svg'
            //                   // width: 18.33.w,
            //                   // height: 9.17.h,
            //                   ),
            //             ),
            //           )
            //         : GestureDetector(
            //             onTap: hideShowText,
            //             child: Transform.scale(
            //               scale: 0.5.sp,
            //               child: SvgPicture.asset(
            //                   // getAssetSvg(icon: "eye_visible_icon"),
            //                   'assets/icons/questpro.svg'
            //                   // width: 18.33.w,
            //                   // height: 9.17.h,
            //                   ),
            //             ),
            //           ),
          ),
      // )
      // ,
      // 8.0.horizontalSpace,
      //   ],
    );
  }
}

/*


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_heritage_app/core/res/constants/color_constants.dart';
import 'package:my_heritage_app/core/res/extensions.dart';
import 'package:my_heritage_app/core/utils/functions.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? placeHolder;
  final List<TextInputFormatter>? inputFormat;
  final Function(String? e)? onsave;
  final Function(String? e)? onchange;
  final FocusNode? focusnode;
  final bool? maskText;
  final String? Function(String? e)? isvalid;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? isEditable;
  final Color? textColor;
  final int? maxLines;
  final double? padding;
  final InputDecorator? decoration;
  final Function()? hideShowText;
  final String? error;
  final bool? showError;
  final bool? showSearchIcon;

  CustomTextField({
    Key? key,
    this.label,
    this.inputFormat,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.controller,
    this.maskText,
    this.isEditable,
    this.keyboardType,
    this.maxLines,
    this.focusnode,
    this.padding,
    this.decoration,
    this.hideShowText,
    this.showError = false,
    this.error,
    this.showSearchIcon,
  }) : super(key: key);

  CustomTextField.search({
    Key? key,
    this.label,
    this.inputFormat,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.controller,
    this.maskText,
    this.isEditable,
    this.keyboardType,
    this.maxLines,
    this.focusnode,
    this.padding,
    this.decoration,
    this.showError = false,
    this.error,
  })showSearchIcon = true , hideShowText = null : super(key: key);

  CustomTextField.password({
    Key? key,
    this.label,
    this.inputFormat,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.controller,
    this.isEditable,
    this.focusnode,
    this.padding,
    this.decoration,
    this.hideShowText,
    this.showError = false,
    this.error,
    this.maskText = true,
  })  : maxLines = 1,
   showSearchIcon = false,
        keyboardType = TextInputType.visiblePassword,
        super(key: key);

  CustomTextField.number({
    Key? key,
    this.label,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.maskText,
    this.controller,
    this.maxLines,
    this.isEditable,
    this.focusnode,
    this.padding,
    this.decoration,
    this.showError = false,
    this.error,
  })  : keyboardType = TextInputType.phone,
        hideShowText = null,
         showSearchIcon = false,
        inputFormat = [FilteringTextInputFormatter.digitsOnly],
        super(key: key);

  CustomTextField.textArea({
    Key? key,
    this.label,
    this.placeHolder,
    this.textColor,
    this.onchange,
    this.onsave,
    this.isvalid,
    this.maskText,
    this.controller,
    this.maxLines,
    this.isEditable,
    this.focusnode,
    this.inputFormat,
    this.decoration,
    this.showError = false,
    this.error,
  })  : keyboardType = TextInputType.text,
  showSearchIcon = false,
        padding = 10.0,
        hideShowText = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label == null
                ? 0.0.spacingH
                : Text(
                    label!,
                    style: TextStyle(
                      color: textColor ?? AppColors.header,
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
            showError!
                ? Text(
                    error!,
                    style: TextStyle(
                      color: AppColors.error,
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                : 0.0.spacingH,
          ],
        ),
        6.0.h.spacingH,
        TextFormField(
          enabled: isEditable,
          key: key,
          controller: controller,
          focusNode: focusnode,
          inputFormatters: inputFormat == null ? [] : [...inputFormat!],
          onSaved: onsave,
          validator: isvalid,
          onChanged: onchange,
          maxLines: maxLines,
          obscureText: maskText ?? false,
          keyboardType: keyboardType ?? TextInputType.text,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: AppColors.text450,
          style: TextStyle(color: textColor ?? AppColors.header),
          decoration: InputDecoration(
            fillColor: AppColors.blueOvelay.withOpacity(0.4.sp),
            contentPadding: EdgeInsets.symmetric(
                vertical: padding ?? 20.0, horizontal: 13.0.sp),
            // errorStyle: const TextStyle(),
            hintText: placeHolder ?? '',
            prefixIcon: showSearchIcon! ? SvgPicture.asset(getAssetSvg(icon: "search_icon")):null,
            suffixIcon: Visibility(
              visible: maskText ?? false,
              child: maskText == false
                  ? GestureDetector(
                      onTap: hideShowText!,
                      child: Transform.scale(
                        scale: 0.5.sp,
                        child: SvgPicture.asset(
                          getAssetSvg(icon: "eye_hidden_icon"),
                          // width: 18.33.w,
                          // height: 9.17.h,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: hideShowText!,
                      child: Transform.scale(
                        scale: 0.5.sp,
                        child: SvgPicture.asset(
                          getAssetSvg(icon: "eye_hidden_icon"),
                          // width: 18.33.w,
                          // height: 9.17.h,
                        ),
                      ),
                    ),
            ),
          ),
        ),
        8.0.spacingH,
      ],
    );
  }
}
*/
