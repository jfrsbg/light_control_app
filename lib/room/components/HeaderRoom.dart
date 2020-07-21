import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/room/components/CardItemRoom.dart';

class HeaderRoom extends StatelessWidget {
  final String roomName;
  final int lights;

  const HeaderRoom({this.roomName, this.lights}) ;
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
          child: SafeArea(child: Image.asset("assets/images/light_bulb.png", width: 90,)),
        ),
      ],
    );
  }
}
