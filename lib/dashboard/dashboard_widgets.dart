

import 'package:flutter/material.dart';

class DashboardWidgets {


Container buildImageOnSlider(String url){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          )),
    );

}
}