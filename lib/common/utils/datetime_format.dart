import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  var formatter = DateFormat('yyyy-MM-dd – hh:mm');
  return formatter.format(date);
}