import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:light_control/control_panel/components/MenuItem.dart';

class BodyControlPanel extends StatelessWidget {
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
          GridView.count(
            padding: EdgeInsets.all(10),
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
            children: <Widget>[
              MenuItem(image: "assets/images/bed.png", numberOfLights: 4, room: "Bed Room",),
              MenuItem(image: "assets/images/room.png", numberOfLights: 2, room: "Living Room",),
              MenuItem(image: "assets/images/kitchen.png", numberOfLights: 5, room: "Kitchen",),
              MenuItem(image: "assets/images/bathtube.png", numberOfLights: 1, room: "Bathroom",),
              MenuItem(image: "assets/images/house.png", numberOfLights: 5, room: "Outdoor",),
              MenuItem(image: "assets/images/balcony.png", numberOfLights: 2, room: "Balcony",),
            ],
          ),
         ],
      ),
    );
  }
}
