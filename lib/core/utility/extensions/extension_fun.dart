import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

extension WidgetSpacing on double {
  /// Adds an empty spacing on the horizontal axis of the a widget tree
  SizedBox get spacingW => SizedBox(width: this);

  /// Adds an empty spacing on the vertical axis of the a widget tree
  SizedBox get spacingH => SizedBox(height: this);
}

extension DioResponseExtension on Response? {
  bool get getResponseStatus {
    final Response? response = this;
    if ((response != null) || (response?.statusCode != null)) {
      if (response!.statusCode! >= 200 && response.statusCode! <= 300) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}

extension PrintStringExtension on String {
  get debugString {
    debugPrint(":::::: $this ::::::", wrapWidth: 2048);
  }
}

extension PhoneNumberExtension on String {
  String get removeFirstZero {
    return this.replaceFirst(RegExp(r'^0'), '');
  }
}

extension StringExtensions on String {
  static bool isNull(dynamic value) => value == null;

  // String? get capitalize => Validators.capitalize(this);

  // String? get capitalizeFirst => Validators.capitalizeFirst(this);
}
