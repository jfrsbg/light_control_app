import 'package:flutter/material.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class DefaultInputText extends StatelessWidget {
  final String labelText;

  const DefaultInputText({Key key, this.labelText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          color: DefaultColors.secondary,
          fontWeight: FontWeight.normal
      ),
      decoration: InputDecoration(
        labelText: this.labelText
      ),
    );
  }
}
