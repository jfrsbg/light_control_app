import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/room/components/CustomSlider.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class BodyRoom extends StatelessWidget {
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Intensity", style: Theme.of(context).textTheme.bodyText1,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Expanded(flex: 1,child: Icon(FontAwesomeIcons.lightbulb, color: Colors.grey,)),
                Expanded(flex: 20,child: CustomSlider()),
                Expanded(flex: 1, child: Icon(FontAwesomeIcons.lightbulb, color: Color(0xfffbe080),)),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: <Widget>[
                Text("Colors", style: Theme.of(context).textTheme.bodyText1,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
