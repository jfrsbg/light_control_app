import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/room/components/ItemRoom.dart';

class HeaderRoom extends StatelessWidget {
  final String roomName;
  final int lights;

  const HeaderRoom({this.roomName, this.lights}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                ItemRoom(
                  title: "Main Light",
                  icon: FontAwesomeIcons.lightbulb,
                ),
                ItemRoom(
                  title: "Desk Lights",
                  icon: FontAwesomeIcons.clipboard,
                ),
                ItemRoom(
                  title: "Bed",
                  icon: FontAwesomeIcons.bed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
