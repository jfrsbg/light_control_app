import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemScene extends StatelessWidget {
  final String title;
  final Color color;

  const ItemScene({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return  Card(
	  shape: RoundedRectangleBorder(
		  borderRadius: BorderRadius.all(Radius.circular(8))
	  ),
	  elevation: 1,
	  color: this.color,
	  child: Center(
		  child: Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[
			  Icon(FontAwesomeIcons.lightbulb, color: Theme.of(context).primaryColor,),
			  SizedBox(width: 8,),
			  Text(this.title, style: Theme.of(context).textTheme.bodyText2, ),
			],
		  )
	  ),
	);
  }
}
