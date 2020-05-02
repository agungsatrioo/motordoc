import 'package:intl/intl.dart';

extension HumanReadableDate on DateTime {
  String tanggal() => DateFormat.yMMMMEEEEd().format(this);
}