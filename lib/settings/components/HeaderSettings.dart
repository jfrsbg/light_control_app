import 'package:flutter/material.dart';

class HeaderSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
	  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
	  child: Row(
		children: <Widget>[
		  Expanded(
			child: Column(
			  crossAxisAlignment: CrossAxisAlignment.start,
			  children: <Widget>[
				Container(
				  width: 120,
				  child: Text(
					"Room Settings",
					style: Theme.of(context).textTheme.headline1,
				  ),
				),
			  ],
			),
		  ),
		],
	  ),
	);
  }
}
