import 'package:intl/intl.dart';

String formatStringDateLocale(String localeDate) {
  final date = DateFormat('dd MMMM yyyy | hh:ss');
  return date.format(DateTime.parse(localeDate));
}

String memberValidUntil(String localeDate) {
  try {
    final date = DateFormat('MM/yy');
    return date.format(DateTime.parse(localeDate));
  } catch (e) {
    return "Permanent";
  }
}

String currencyFormater(double price) {
  try {
    final price = NumberFormat("#,###,###");
    return price.format(price);
  } catch (e) {
    return "Fromat invalid";
  }
}

String getDateFromLocale(String localeDate) {
  try {
    final date = DateFormat('dd');
    return date.format(DateTime.parse(localeDate));
  } catch (e) {
    return "Date From Locale invalid";
  }
}

String getMonthFromLocale(String localeDate) {
  try {
    final date = DateFormat('MMM');
    return date.format(DateTime.parse(localeDate));
  } catch (e) {
    return "Date From Locale invalid";
  }
}
