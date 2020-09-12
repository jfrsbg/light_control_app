import 'package:flutter/material.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class DefaultInputText extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const DefaultInputText({Key key, this.labelText, this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        color: DefaultColors.secondary,
        fontWeight: FontWeight.normal,
      ),
      decoration: InputDecoration(
        labelText: this.labelText,
      ),
    );
  }
}
