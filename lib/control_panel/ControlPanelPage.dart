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
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).accentColor,
        ),
        //Header of Page
        SafeArea(
          child: Column(
            children: <Widget>[
              HeaderControlPanel(),
              BodyControlPanel()
            ],
          )
        ),
      ],
    );
  }
}
