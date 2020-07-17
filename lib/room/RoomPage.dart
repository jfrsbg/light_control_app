import 'package:flutter/material.dart';
import 'package:light_control/room/components/BodyRoom.dart';
import 'package:light_control/room/components/HeaderRoom.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).accentColor,
        ),
        SafeArea(
            child: Column(
              children: <Widget>[
                HeaderRoom(),
                BodyRoom()
              ],
            )
        ),

      ],
    );
  }
}
