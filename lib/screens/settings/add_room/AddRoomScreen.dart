import 'package:flutter/material.dart';
import 'package:light_control/screens/settings/add_room/components/BodyAddRoom.dart';
import 'package:light_control/screens/settings/components/HeaderSettings.dart';

class AddRoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).accentColor,
          ),

          //Header and Body
          SafeArea(
              child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    HeaderSettings(
                      title: "Add Room",
                    ),
                    BodyAddRoom()
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
