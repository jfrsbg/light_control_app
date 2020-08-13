import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/screens/settings/add_room/components/CardRoomPart.dart';
import 'package:light_control/widgets/DefaultInputText.dart';

class BodyAddRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius:
              BorderRadius.only(topLeft: Radius.circular(45), topRight: Radius.circular(45))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //title Name
            Row(
              children: <Widget>[
                Text(
                  "Room settings",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.add_a_photo,
                  size: 60,
                  color: Theme.of(context).accentColor,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: DefaultInputText(
                    labelText: "Name",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            //Title room parts
            Row(
              children: <Widget>[
                Text(
                  "Room Parts",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //Room parts
            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardRoomPart(),
                  CardRoomPart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/balcony.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
