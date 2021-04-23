import 'package:intl/intl.dart';

String formatStringDateLocale(String localeDate) {
  final date = DateFormat('dd MMMM yyyy | hh:ss');
  return date.format(DateTime.parse(localeDate));
}

String calculateAge(DateTime currDate, String birthDate) {
  var _birth = DateTime.parse(birthDate);
  var total = currDate.year - _birth.year +1;
  return total.toString();
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

