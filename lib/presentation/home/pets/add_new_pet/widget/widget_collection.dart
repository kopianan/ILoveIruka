import 'package:flutter/material.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';

class GetTitle extends StatelessWidget {
  const GetTitle({Key key, @required this.title, this.onClose, this.onBack})
      : super(key: key);
  final String title;
  final Function onBack;
  final Function onClose;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onBack,
          icon: Icon(Icons.arrow_back),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
        IconButton(
          onPressed: onClose,
          icon: Icon(Icons.close),
        ),
      ],
    );
  }
}

class AddPetTitle extends StatelessWidget {
  const AddPetTitle(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
