import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

void showBasicFlash(BuildContext context, String text) {
  showFlash(
      context: context,
      duration: Duration(
        seconds: 4,
      ),
      builder: (context, controller) {
        return Flash(
            controller: controller,
            style: FlashStyle.floating,
            boxShadows: kElevationToShadow[4],
            horizontalDismissDirection: HorizontalDismissDirection.horizontal,
            child: FlashBar(
              message: Text(text),
            ));
      });
}
