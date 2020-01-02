
import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';

class BuildStylingSlider extends StatefulWidget {
  BuildStylingSlider({@required this.regProv});

  final RegisterProvider regProv;
  @override
  _BuildStylingSliderState createState() => _BuildStylingSliderState();
}

class _BuildStylingSliderState extends State<BuildStylingSlider> {
  double dataSlide = 1.0;

  String changed = "";

  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      divisions: 3,
      activeColor: ColorPalate.darkOrange,
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
          widget.regProv.setStyling(newVal); 
        });
      },
      value: widget.regProv.getStyling,
    );
  }
}
