import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Common {
  launchURL(String urlAddress) async {
    String url = "$urlAddress";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static final formatter = new NumberFormat("#,###");

 static  formatNumber(int number) {
    return formatter.format(number);
  }
}
