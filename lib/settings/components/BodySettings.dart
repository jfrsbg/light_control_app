import 'package:flutter/material.dart';
import 'package:light_control/settings/components/RoomItem.dart';

class BodySettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Rooms", style: Theme.of(context).textTheme.bodyText1,)
              ],
            ),
            Column(
              children: <Widget>[
                RoomItem()
              ],
            )
          ],
        ),
      ),
    );
  }
}
