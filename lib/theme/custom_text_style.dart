import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

double getLineHeight({required double lineHeight, required double fontSize}) {
  return (lineHeight / fontSize).sp;
}

extension on TextStyle {
  TextStyle get omnes {
    return copyWith(
      fontFamily: 'Omnes',
    );
  }

  TextStyle get Poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle withColor(Color color) {
    return TextStyle(
      color: color,
      fontSize: this.fontSize,
      fontWeight: this.fontWeight,
      fontStyle: this.fontStyle,
      letterSpacing: this.letterSpacing,
      wordSpacing: this.wordSpacing,
      height: this.height,
      fontFamily: this.fontFamily,
      decoration: this.decoration,
      decorationColor: this.decorationColor,
      decorationStyle: this.decorationStyle,
      decorationThickness: this.decorationThickness,
      debugLabel: this.debugLabel,
      fontFamilyFallback: this.fontFamilyFallback,
      shadows: this.shadows,
      fontFeatures: this.fontFeatures,
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  static TextStyle get buttonText => TextStyle(
        color: PrimaryColors.accentInput,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        // height: 0.24.sp,
      );
  // Body style
  static TextStyle get bodyLargeOmnes => theme.textTheme.bodyLarge!.omnes;
  static TextStyle get bodyMediumOmnes => theme.textTheme.bodyMedium!.omnes;
  static TextStyle get bodyLargePoppins => theme.textTheme.bodyLarge!.Poppins;
  static TextStyle get bodyMediumPoppins => theme.textTheme.bodyMedium!.Poppins;
  static TextStyle get bodySmallFPro => theme.textTheme.bodySmall!.Poppins;
  // Caption style
  static TextStyle get captionLargePoppins =>
      theme.textTheme.displayLarge!.Poppins;
  static TextStyle get captionMediumPoppins =>
      theme.textTheme.displayMedium!.Poppins;
  static TextStyle get captionSmallPoppins =>
      theme.textTheme.displaySmall!.Poppins;

  ///
  static TextStyle get boldH4Omnes_32x7 => bodyLargeOmnes.copyWith(
      fontSize: 32.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH1Poppins_56x7 => bodyLargePoppins.copyWith(
      fontSize: 56.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.2);

  ///
  static TextStyle get boldH2Poppins_48x7 => bodyLargePoppins.copyWith(
      fontSize: 48.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.2);

  ///
  static TextStyle get boldH3Poppins_38x7 => bodyLargePoppins.copyWith(
      fontSize: 38.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH4Poppins_32x7 => bodyLargePoppins.copyWith(
      fontSize: 32.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH4Poppins_31x7 => bodyLargePoppins.copyWith(
      fontSize: 31.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH5Poppins_24x7 => bodyLargePoppins.copyWith(
      fontSize: 24.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH5Poppins_24x6 => bodyLargePoppins.copyWith(
      fontSize: 24.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH5Poppins_20x6 => bodyLargePoppins.copyWith(
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get boldH6Poppins_18x7 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_26x6 => bodyLargePoppins.copyWith(
      fontSize: 26.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_16x5 => bodyLargePoppins.copyWith(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_16x6 => bodyLargePoppins.copyWith(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_80x6 => bodyLargePoppins.copyWith(
      fontSize: 80.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_20x5 => bodyLargePoppins.copyWith(
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_24x5 => bodyLargePoppins.copyWith(
      fontSize: 24.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_14x4 => bodyLargePoppins.copyWith(
      fontSize: 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_18x6 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_18x5 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_18x4 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get boldH6Poppins_12x4 => bodyLargePoppins.copyWith(
      fontSize: 12.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  static TextStyle get semiBoldH1Poppins_56x7 => bodyMediumPoppins.copyWith(
      fontSize: 56.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.2);

  ///
  static TextStyle get semiBoldH2Poppins_48x7 => bodyMediumPoppins.copyWith(
      fontSize: 48.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.2);

  ///
  static TextStyle get semiBoldH3Poppins_38x7 => bodyMediumPoppins.copyWith(
      fontSize: 38.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);
  static TextStyle get semiBoldOmnes_36x7 => bodyMediumPoppins.copyWith(
      fontSize: 36.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///

  static TextStyle get semiBoldH3Poppins_36x7 => bodyMediumPoppins.copyWith(
      fontSize: 36.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get semiBoldH3Poppins_12x5 => bodyMediumPoppins.copyWith(
      fontSize: 12.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get semiBoldH4Poppins_32x7 => bodyMediumPoppins.copyWith(
      fontSize: 32.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get semiBoldH5Poppins_24x5 => bodyMediumPoppins.copyWith(
      fontSize: 24.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get semiBoldOmnes_28x7 => bodyMediumOmnes.copyWith(
      fontSize: 28.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  ///
  static TextStyle get semiBoldH6Poppins_18x7 => bodyMediumPoppins.copyWith(
      fontSize: 18.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.08);

  ///
  ///
  static TextStyle get body1Poppins_15x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_15x5 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_14x5 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_16x5 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 16.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_10x5 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 10.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_9x7 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 9.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_16x6 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 16.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_31x7 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 31.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_14x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_14x3 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w300,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_14x7 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_14x6 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_12x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 12.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp,
          // color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1Poppins_12x5 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 12.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          // height: 2.sp,
          // color: Colors.white,
          letterSpacing: -0.4);

  static TextStyle get body1BoldPoppins_15x7 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);
  static TextStyle get body1BoldPoppins_15x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1BoldPoppins_16x6 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 16.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1BoldPoppins_15x6 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1BoldPoppins_18x6 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 18.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  ///
  static TextStyle get body1BoldPoppins_17x6 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 17.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  static TextStyle get body2Poppins_13x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 13.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.2);

  static TextStyle get body2BoldPoppins_13x7 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.4);

  static TextStyle get textFieldPoppins_17x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 17.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.3);

  ///

  static TextStyle get textFieldPoppins_20x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 20.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.3);

  ///
  static TextStyle get textFieldPoppins_14x4 =>
      theme.textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: Colors.white,
          letterSpacing: -0.3);

  ///
  static TextStyle get caption1Poppins_11x4 => captionLargePoppins.copyWith(
      fontSize: 11.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: Colors.white,
      letterSpacing: -0.1);

  static TextStyle get caption2Poppins_11x4 => captionLargePoppins.copyWith(
      fontSize: 10.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: Colors.white, color: Colors.white,
      letterSpacing: -0.1);
}
