import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String url;
  const CachedImage({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "$url",
      fit: BoxFit.contain,
    );
  }
}
