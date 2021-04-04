import 'package:flutter/material.dart';

Widget get onImageLoadingError => Padding(
      padding: EdgeInsets.all(20),
      child: Image.asset(
        'images/assets/broken_image.png',
        fit: BoxFit.contain,
      ),
    );
