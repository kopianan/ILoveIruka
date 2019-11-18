import 'package:flutter/material.dart';

class DashboardWidgets {
  Widget buildImageOnSlider(String url) {
    print(url + "url");
    return Card(
      elevation: 4.0,
      child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Image.network(
            url,
            fit: BoxFit.cover,
          )),
    );
  }
}
