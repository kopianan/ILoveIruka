import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';

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
        activeColor: ColorPalate.darkOrange,
        label: changed,
        max: 3,
        min: 0,
        onChanged: (newVal) {
          setState(() {
            changed = Common.skillMapper(newVal);

            widget.regProv.setCliping(newVal);
          });
        },
        value: widget.regProv.getCliping);
  }
}
