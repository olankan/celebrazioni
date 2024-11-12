import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  String get convertToQueryDate => DateFormat('yyyy-MM-dd').format(this);

  String get convertToAppDate => DateFormat('MMMM d, y', 'en_US').format(this);

  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}

extension TimeExtension on DateTime {
  /// Extract the hour (1-24 format) from the DateTime object.
  int get hour => this.hour;

  /// Extract the minute (0-59) from the DateTime object.
  int get minute => this.minute;

  /// Extract the second (0-59) from the DateTime object.
  int get second => this.second;

  /// Extract the hour (1-12 format) from the DateTime object.
  int get hour12 => this.hour % 12 != 0 ? hour % 12 : 12;

  /// Check if it's AM (true) or PM (false).
  bool get isAm => this.hour < 12;

  /// Get a formatted string representing time in 12-hour format (e.g., "10:30 AM").
  String get format12Hour =>
      '${hour12.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')} ${isAm ? 'AM' : 'PM'}';
}
