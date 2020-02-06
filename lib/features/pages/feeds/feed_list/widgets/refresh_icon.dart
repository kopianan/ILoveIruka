import 'package:flutter/material.dart';

class RefreshIconWidget extends StatelessWidget {
  const RefreshIconWidget({Key key, this.onPressed}) : super(key: key);

  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed: () => onPressed(),
          icon: Icon(
            Icons.refresh,
            size: 30,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
