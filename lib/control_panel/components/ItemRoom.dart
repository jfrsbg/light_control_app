import 'package:flutter/material.dart';

class ItemRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15,),
            Image.asset("assets/images/bed.png", width: 70, fit: BoxFit.cover,),
            SizedBox(height: 15,),
            Text("Bed Room", style: Theme.of(context).textTheme.headline6,),
            SizedBox(height: 5,),
            Text("4 Lights", style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(width: 150,)
          ],
        ),
      ),
    );
  }
}
