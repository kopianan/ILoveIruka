import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/util/common.dart';
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
      max: 3,
      min: 0,
      onChanged: (newVal) {
        setState(() {
          changed = Common.skillMapper(newVal);
          dataSlide = newVal;
          widget.regProv.setStyling(newVal);
        });
      },
      value: widget.regProv.getStyling,
    );
  }
}
