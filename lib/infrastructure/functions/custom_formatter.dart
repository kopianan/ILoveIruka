import 'package:intl/intl.dart';

String formatStringDateLocale(String localeDate) {
  final date = DateFormat('dd MMMM yyyy | hh:ss');
  return date.format(DateTime.parse(localeDate));
}

String currencyFormater(double price) {
  final price = NumberFormat("#,###,###");
  return price.format(price);
}

String getDateFromLocale(String localeDate) {
  final date = DateFormat('dd');
  return date.format(DateTime.parse(localeDate));
}

String getMonthFromLocale(String localeDate) {
  final date = DateFormat('MMM');
  return date.format(DateTime.parse(localeDate));
}
