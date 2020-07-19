import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/room/components/BodyRoom.dart';
import 'package:light_control/room/components/HeaderRoom.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  bool buttonOn = true;

  void onTap(){
    setState(() {
      buttonOn = !buttonOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      HeaderRoom(
                        roomName: "Bed Room",
                        lights: 4,
                      ),
                      BodyRoom()
                    ],
                  ),

                  //On/Off button
                  Positioned(
                    right: 50,
                    top: 225,
                    child: InkWell(
                      onTap: onTap,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(offset: Offset(1, 1), color: Colors.grey, blurRadius: 5)
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(FontAwesomeIcons.powerOff,
                              color: buttonOn ? DefaultColors.powerOn : DefaultColors.powerOff,
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ],
    );
  }
}
