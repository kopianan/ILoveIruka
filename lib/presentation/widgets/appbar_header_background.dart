import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AppBarHeaderBackground extends StatefulWidget {
  const AppBarHeaderBackground({
    Key key,
  }) : super(key: key);

  @override
  _AppBarHeaderBackgroundState createState() => _AppBarHeaderBackgroundState();
}

class _AppBarHeaderBackgroundState extends State<AppBarHeaderBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(180 / 360),
          child: _buildCard(
            // backgroundColor: Colors.purpleAccent,
            config: CustomConfig(
              gradients: [
                [Colors.red, Color(0xEEF44336)],
                [Colors.red[800], Color(0x77E57373)],
                [Colors.orange, Color(0x66FF9800)],
                [Colors.yellow, Color(0x55FFEB3B)]
              ],
              durations: [35000, 19440, 10800, 6000],
              heightPercentages: [0.20, 0.23, 0.25, 0.30],
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
          ),
        ));
  }

  _buildCard({
    Config config,
    Color backgroundColor = Colors.transparent,
    DecorationImage backgroundImage,
  }) {
    return Container(
      width: double.infinity,
      child: WaveWidget(
        config: config,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        size: Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      ),
    );
  }
}
