import 'package:flutter/material.dart';
import 'package:light_control/control_panel/components/ItemRoom.dart';

class BodyControlPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45)
            )
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Row(
                children: <Widget>[
                  Text("All Rooms", style: Theme.of(context).textTheme.bodyText1,)
                ],
              ),
            ),
            Wrap(
              children: <Widget>[
                ItemRoom(),
                ItemRoom(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
