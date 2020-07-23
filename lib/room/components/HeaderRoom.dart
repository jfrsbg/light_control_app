import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:light_control/room/components/CardItemRoom.dart';
import 'package:light_control/stores/room/RoomStore.dart';

class HeaderRoom extends StatelessWidget {
  final String roomName;
  final int lights;

  HeaderRoom({this.roomName, this.lights}) ;

  final roomStore = GetIt.I.get<RoomStore>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 25),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 115,
                          child: Text(
                            this.roomName,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: <Widget>[
                    Text("$lights Lights", style: Theme.of(context).textTheme.subtitle2,)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardItemRoom(
                      title: "Main Light",
                      icon: FontAwesomeIcons.lightbulb,
                    ),
                    CardItemRoom(
                      title: "Desk Lights",
                      icon: FontAwesomeIcons.clipboard,
                    ),
                    CardItemRoom(
                      title: "Bed",
                      icon: FontAwesomeIcons.bed,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //light bulb image
        Positioned(
          top: 0,
          right: 50,
          child: SafeArea(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 90,
                    right: 35,
                    child: Observer(
                      builder: (_){
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)
                            ),
                            boxShadow: [
                              roomStore.lightOn ? BoxShadow(
                                  color: Color(0xffff8c0c).withOpacity(roomStore.lightIntensity/roomStore.maxIntensity),
                                  blurRadius: 15,
                                  spreadRadius: 10
                              ) : BoxShadow(),
                            ],
                            color:
                            roomStore.lightOn ?
                            Color(0xffff8c0c).withOpacity(roomStore.lightIntensity/roomStore.maxIntensity)
                                : Colors.black,
                          ),
                          height: 20,
                          width: 20,
                        );
                      },
                    ),
                  ),
                  Image.asset("assets/images/light_bulb.png", width: 90,)
                ],
              )
          ),
        ),
      ],
    );
  }
}
