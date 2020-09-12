import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/AppRoutes.dart';
import 'package:light_control/screens/room/components/CustomSlider.dart';
import 'package:light_control/screens/room/components/ItemColor.dart';
import 'package:light_control/screens/room/components/ItemScene.dart';

class BodyRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Intensity",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.lightbulb,
                      color: Colors.grey,
                    )),
                Expanded(flex: 20, child: CustomSlider()),
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.lightbulb,
                      color: Color(0xfffbe080),
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Colors",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: <Widget>[
                ItemColor(
                  color: Color(0xffff9b9b),
                ),
                ItemColor(
                  color: Color(0xff94eb9e),
                ),
                ItemColor(
                  color: Color(0xff94caeb),
                ),
                ItemColor(
                  color: Color(0xffa594eb),
                ),
                ItemColor(
                  color: Color(0xffde94eb),
                ),
                ItemColor(
                  color: Color(0xffebd094),
                ),
                ButtonAdd(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.selectColor),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Scenes",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 8,
              childAspectRatio: 2.6,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 2
                      : 3,
              children: <Widget>[
                ItemScene(title: "Birthday", color: Color(0xffffa997)),
                ItemScene(title: "Party", color: Color(0xffb593eb)),
                ItemScene(title: "Relax", color: Color(0xff93d0eb)),
                ItemScene(title: "Fun", color: Color(0xff9ae293)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonAdd extends StatelessWidget {
  final Function onTap;

  const ButtonAdd({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 27,
        height: 27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(1, 1))
          ],
          color: Colors.white,
        ),
        child: Icon(
          FontAwesomeIcons.plus,
          size: 12,
        ),
      ),
    );
  }
}
