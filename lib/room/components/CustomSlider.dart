import 'package:flutter/material.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double value = 0;
  void onChanged(double value){
    setState(() {
      this.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      onChanged: onChanged,
      min: 0,
      max: 10,
      divisions: 10,
      label: "${this.value.toInt()}",
      activeColor: DefaultColors.light,

    );
  }
}