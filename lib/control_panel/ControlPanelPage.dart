import 'package:flutter/material.dart';

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
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Row(
              children: <Widget>[
                Container(
                  width: 115,
                  child: Text(
                    "Control Panel",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ],
            ),
          )
        )
      ],
    );
  }
}
