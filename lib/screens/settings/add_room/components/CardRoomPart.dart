import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardRoomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Card(
	  color: Theme.of(context).primaryColor,
	  elevation: 5,
	  shape: RoundedRectangleBorder(
		  borderRadius: BorderRadius.all(Radius.circular(12))
	  ),
	  child: Padding(
		padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
		child: Container(
		  width: 120,
		  child: Row(
			children: <Widget>[
			  Expanded(
				flex: 1,
				child: Icon(FontAwesomeIcons.lightbulb, color: Theme.of(context).accentColor),
			  ),
			  Expanded(
				  flex: 3,
				  child: Text("Main Light",
					textAlign: TextAlign.center,
					style:  Theme.of(context).textTheme.subtitle1,
				  )
			  )
			],
		  ),
		),
	  ),
	);
  }
}