import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:light_control/screens/room/components/BodyRoom.dart';
import 'package:light_control/screens/room/components/HeaderRoom.dart';
import 'package:light_control/stores/room/RoomStore.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  final roomStore = GetIt.I.get<RoomStore>();

  void onTap() => roomStore.setLightOn(!roomStore.lightOn);

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
                        BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey,
                            blurRadius: 5)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Observer(
                        builder: (_) {
                          return Icon(
                            FontAwesomeIcons.powerOff,
                            color: roomStore.lightOn
                                ? DefaultColors.powerOn
                                : DefaultColors.powerOff,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
