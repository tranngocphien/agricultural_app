import 'package:intl/intl.dart';
String formatNumber(int number) {
  var formatter = NumberFormat('#,###,###');
  return formatter.format(number);
}