

import 'package:flutter/material.dart';

class DashboardWidgets {


Container buildImageOnSlider(String url){
    return Container(
      width: double.infinity,
      child: Image.network(
            url,
            fit: BoxFit.cover,
            
          )
    );

}


}