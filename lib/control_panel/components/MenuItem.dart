import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String image;
  final String room;
  final int numberOfLights;

  const MenuItem({this.image, this.room, this.numberOfLights}) ;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15,),
            Image.asset(image, width: 60, fit: BoxFit.cover,),
            SizedBox(height: 25,),
            Text(room, style: Theme.of(context).textTheme.headline6,),
            SizedBox(height: 5,),
            Text("$numberOfLights Lights", style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(width: 150,)
          ],
        ),
      ),
    );
  }
}
