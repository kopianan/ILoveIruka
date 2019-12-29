import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/register_provider.dart';

class BuildClipingSlider extends StatefulWidget {
  BuildClipingSlider({@required this.regProv});

  final RegisterProvider regProv;
  @override
  _BuildClipingSliderState createState() => _BuildClipingSliderState();
}

class _BuildClipingSliderState extends State<BuildClipingSlider> {
  String changed = "";
  @override
  Widget build(BuildContext context) {
  return Slider.adaptive(
      divisions: 3,
      activeColor: Colors.red,
      label:changed,
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
          widget.regProv.setCliping(newVal); 
        });
      },
      value: widget.regProv.getCliping
    );
  }
}
