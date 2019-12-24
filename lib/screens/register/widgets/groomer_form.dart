import 'package:flutter/material.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';

import '../register_widget.dart';

class GroomerForm extends StatelessWidget {
  const GroomerForm({
    Key key,
    @required RegisterAdditional registerAdditional,
    @required this.c,
  })  : _registerAdditional = registerAdditional,
        super(key: key);

  final RegisterAdditional _registerAdditional;
  final ScrollController c;
  
  final double distanceOfWidget = 10 ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                "Groomer Page Form",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    HomeGroomingAvailability(),
                    SizedBox(height: distanceOfWidget,),
                    ProvinceDropdown(),
                    SizedBox(height:distanceOfWidget,),
                    BuildCityDropdown(),
                    SizedBox(height:distanceOfWidget,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Years Of Experience",
                          suffixText: "Years",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                    
                    SizedBox(height: distanceOfWidget,),
                    BuildSlider(),
                    SizedBox(height: distanceOfWidget,),
                    BuildSlider(),
                  ],
                ),
              )
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text("Back"),
                onPressed: () {
                  int page;

                  _registerAdditional.backAnimated(context, c, 1);
                },
              ),
              Container(
                width: 150,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _registerAdditional.nextAnimated(context, c, 4);
                  },
                  label: Text("Next"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeGroomingAvailability extends StatelessWidget {
  const HomeGroomingAvailability({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SwitchListTile(
        title: Text("Home Grooming Availability"),
        subtitle: Text("Is groomer available with home grooming ?"),
        selected: true,
        value: true,
        onChanged: (newVal) {},
      ),
    );
  }
}

class BuildSlider extends StatefulWidget {
  @override
  _BuildSliderState createState() => _BuildSliderState();
}

class _BuildSliderState extends State<BuildSlider> {
  double dataSlide = 1.0;
  String changed = "";
  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      divisions: 3,
      activeColor: Colors.red,
      label: changed,
      max: 4,
      min: 1,
      onChanged: (newVal) {
        setState(() {
          if (newVal == 1)
            changed = "Beginning";
          else if (newVal == 2)
            changed = "Middle";
          else if (newVal == 3)
            changed = "Good";
          else
            changed = "Excellent";
          dataSlide = newVal;
        });
      },
      value: dataSlide,
    );
  }
}
