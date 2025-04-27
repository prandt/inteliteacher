import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String toFancyDate({String format = "dd MMM"}) {
    try {
      final outputFormat = DateFormat(format, 'pt_BR');
      return outputFormat.format(this).toUpperCase().replaceAll(".", "");
    } catch (e) {
      throw Exception(e);
    }
  }

  DateTime zero() {
    return DateTime.now().copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

}

extension StringExtensions on String {
  String toAvatarAcronyms() {
    try {
      final names = split(" ");
      if (names.length > 1) {
        return "${names.first.substring(0, 1).toUpperCase()}${names.last.substring(0, 1).toUpperCase()}";
      }
      return names.first.substring(0, 1).toUpperCase();
    } catch (e) {
      return this[0].toUpperCase();
    }
  }
}
