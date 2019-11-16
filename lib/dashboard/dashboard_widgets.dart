

import 'package:flutter/material.dart';

class DashboardWidgets {


Container buildImageOnSlider(String url){
  print(url + "url"); 
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(right: 20),
      width: double.infinity,
      child: Image.network(
            url,
            fit: BoxFit.cover,
            
          )
    );

}


}