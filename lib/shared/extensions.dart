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

}
