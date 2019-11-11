

import 'package:flutter/material.dart';

class DashboardWidgets {


Container buildImageOnSlider(String url){
  print(url + "url"); 
    return Container(
      width: double.infinity,
      child: Image.network(
            url,
            fit: BoxFit.cover,
            
          )
    );

}


}