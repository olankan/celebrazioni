import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().darkThemeData();

class ThemeHelper {
  /// Returns the current theme data.
  ThemeData _getDarkThemeData() {
    var colorScheme = ColorSchemes.primaryColorsSchemeDark;
    //
    return ThemeData(
      fontFamily: 'Poppins',
    ).copyWith(
      scaffoldBackgroundColor: PrimaryColors.accentBackground,
      brightness: Brightness.dark,
      visualDensity: VisualDensity.standard,
      colorScheme: ColorSchemes.primaryColorsSchemeDark,
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          minimumSize: Size(328.w, 40.h),
          disabledBackgroundColor: PrimaryColors.accentChatBubble,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.r),
          ),
          textStyle: TextStyle(
            color: PrimaryColors.accentInput,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            // height: 0.24.sp,
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      //
      inputDecorationTheme: InputDecorationTheme().copyWith(
        suffixIconColor: PrimaryColors.white,
        floatingLabelStyle: TextStyle(
          color: PrimaryColors.primary,
          fontWeight: FontWeight.w400,
          fontSize: 12.r,
        ),
        labelStyle: TextStyle(
          color: Color(0XFFAFB2BF),
          fontWeight: FontWeight.w400,
          fontSize: 12.r,
        ),
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.3.sp,
          color: PrimaryColors.grayPlaceholder,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 18.r),
        filled: false,
        fillColor: PrimaryColors.transparent,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide:
              BorderSide(color: PrimaryColors.errorStroke, width: 1.5.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: PrimaryColors.grayStroke, width: 1.5.r),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: PrimaryColors.grayStroke, width: 1.0.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: PrimaryColors.primary, width: 1.5.r),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide:
              BorderSide(color: PrimaryColors.errorStroke, width: 1.0.r),
        ),
        errorStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: PrimaryColors.errorText,
        ),
      ),
      //
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            // color: PrimaryColors.gray400,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1.r,
        space: 5.8.r,
        color: PrimaryColors.grayDivider,
      ),
    );
  }

//* v2 implementation
  ThemeData _getLightThemeData() {
    var colorScheme = ColorSchemes.primaryColorsSchemeDark;
    //
    return ThemeData(
      fontFamily: 'Poppins',
    ).copyWith(
      brightness: Brightness.light,
      visualDensity: VisualDensity.standard,
      colorScheme: ColorSchemes.primaryColorsSchemeDark,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          minimumSize: Size(328.w, 56.h),
          // disabledBackgroundColor: PrimaryColors.black50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme().copyWith(
        hintStyle: TextStyle(
          fontFamily: '',
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.3.sp,
          // color: PrimaryColors.,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 14.r),
        filled: true,
        fillColor: PrimaryColors.white,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          // borderSide: BorderSide(color: PrimaryColors.redA70001)
        ),
        errorStyle: TextStyle(
          fontFamily: 'Mulish',
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          // color: PrimaryColors.lightGray3,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            // color: PrimaryColors.gray400,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1.r,
        space: 5.8.r,
        color: PrimaryColors.grayDivider,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => PrimaryColors();

  /// Returns the current theme data.
  ThemeData darkThemeData() => _getDarkThemeData();
  ThemeData lightThemeData() => _getLightThemeData();
}

/// Class containing the supported text theme styles.
// class TextThemes {
//   static TextTheme darkTextTheme(ColorScheme colorScheme) => TextTheme();
// }

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF25CEC7),
  );
  static final primaryColorsSchemeDark = ColorScheme.dark(
    primary: Color(0XFF25CEC7),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  static Color get transparent => Colors.transparent;
  // primary styles
  static Color get white => Color(0XFFFFFFFF);
  static Color get black => Color(0XFF000000);
  static Color get primary => Color(0xFF25CE71);
  // Accent styles
  static Color get accentGreen => Color(0XFF00B43F);
  static Color get accentBackground => Color(0XFF1C1D23);
  static Color get accentInput => Color(0XFF001B39);
  static Color get accentChatBubble => Color(0XFF2D303B);
  static Color get accentYellow => Color(0XFFFFC403);
  static Color get red => Color(0XFFFF0A2D);
  static Color get agreementBg => Color(0XFF4D9CF9).withOpacity(0.2);
  static Color get pink => Color(0XFFFF0A7E);
  static Color get mainText => Color(0XFFC7C8CE);
  static Color get questStarterStart => Color(0XFF25CEC7); //0%
  static Color get questStarterEnd => Color(0XFF008CC9); //100%
  static Color get questMaxStart => Color(0XFF5F9AF9); // 2%
  static Color get questMaxStop => Color(0XFF2F71DB); //100%
  static Color get questPremiumStart => Color(0XFFF5ECA9); //0%
  static Color get questPremiumStop => Color(0XFFCEA64F); //100%
// Gray styles
  static Color get grayPlaceholder => Color(0XFFA8A8A8);
  static Color get graySecondary => Color(0XFFDDDDDD);
  static Color get grayMainText => Color(0XFFF9FBFF);
  static Color get grayButton => Color(0XFF0F1014);
  static Color get grayStroke => Color(0XFF161616);
  static Color get grayDivider => Color(0XFF383A44);
  static Color get grayIcon => Color(0XFFDBDBDB);
  static Color get grayBorder => Color(0XFF2D6AA066);
// Error styles
  static Color get errorStroke => Color(0xffFF8468);
  static Color get errorText => Color(0xffFF8468);
  static Color get errorIcon => Color(0xffEF3739);

  // Neutral styles
  static Color get neutral40 => const Color(0XFF98A2B3);

// Light Mode
  static Color get lightModeStroke => Color(0xffD0D2D5);
  static Color get lightIcon => Color(0xffA0A0A0);
  static Color get inActiveGreyText => Color(0xffCBD4DC);
  static Color get inactiveColor => Color(0xfff4f7fb);
// LM
  static Color get lmPlaceHolder => Color(0xff8B8B8B);
  static Color get lmSecondaryText => Color(0xff485666);
  static Color get textfield => Color(0xFFF7F8F8);
  static Color get six => Color(0xFFF08102);
  static Color get mainBg => Color(0xFFFCFDFF);
}
