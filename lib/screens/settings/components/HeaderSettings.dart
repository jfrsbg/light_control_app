import 'package:flutter/material.dart';

class HeaderSettings extends StatelessWidget {
  final String title;

  const HeaderSettings({Key key, this.title}) : super(key: key);
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
					this.title,
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
