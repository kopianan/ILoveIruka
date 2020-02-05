import 'package:flutter/material.dart';
import 'package:i_love_iruka/widgets/show_alert_dialog.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Common {
  static launchURL(String urlAddress) async {
    String url = "$urlAddress";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static final formatter = new NumberFormat("#,###");

  static formatNumber(int number) {
    return formatter.format(number);
  }

  static String convertDate(String dateTime) {
    if(dateTime == null){
      return ""; 
    }
    var date = DateTime.parse(dateTime);
    var formatedDate = DateFormat("dd-MM-yyyy").format(date);
    return formatedDate;
  }

  static Future showServicesDialog(BuildContext context, {String content, String title, String phone, String link, String image}) async {
    return showDialog(
        context: (context),
        builder: (context) => ShowAlertDialog(
              content: "Choose Action",
              title: "Grooming Salon",
              link: link,
              phone: phone,
            ));
  }

  static String skillMapper(double level) {
    if (level == 0.0)
      return "Beginning";
    else if (level == 1)
      return "Middle";
    else if (level == 2)
      return "Good";
    else
      return "Excellent";
  }
}
