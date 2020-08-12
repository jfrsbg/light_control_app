import 'package:flutter/material.dart';
import 'package:light_control/home/components/BodyHome.dart';
import 'package:light_control/home/components/HeaderHome.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).accentColor,
        ),
        //Header of Page
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                HeaderHome(),
                BodyHome()
              ],
            ),
          )
        ),
      ],
    );
  }
}
