import 'package:flutter/material.dart';
import 'package:light_control/room/components/ItemRoom.dart';

class HeaderRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                        "Bed Room",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Image.asset("assets/images/balcony.png")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ItemRoom(),
                ItemRoom(),
                ItemRoom(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
