import 'package:flutter/material.dart';

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
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Row(
              children: <Widget>[
                Text("Intensity", style: Theme.of(context).textTheme.bodyText1,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
