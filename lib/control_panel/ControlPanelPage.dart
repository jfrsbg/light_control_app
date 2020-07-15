import 'package:flutter/material.dart';
import 'package:light_control/control_panel/components/BodyControlPanel.dart';
import 'package:light_control/control_panel/components/HeaderControlPanel.dart';

class ControlPanelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).accentColor,
        ),
        //Header of Page
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                HeaderControlPanel(),
                BodyControlPanel()
              ],
            ),
          )
        ),
      ],
    );
  }
}
