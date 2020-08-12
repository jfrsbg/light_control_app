import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/settings/components/BodySettings.dart';
import 'package:light_control/settings/components/HeaderSettings.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Stack(
	  children: <Widget>[
		Container(
		  width: MediaQuery.of(context).size.width,
		  color: Theme.of(context).accentColor,
		),

		//Header and Body
		SafeArea(
			child: SingleChildScrollView(
			  child: Stack(
				children: <Widget>[
				  Column(
					children: <Widget>[
					  HeaderSettings(),
					  BodySettings()
					],
				  ),

				  //Add button
				  Positioned(
					right: 50,
					top: 140,
					child: InkWell(
					  child: Container(
						  decoration: BoxDecoration(
							  color: Theme.of(context).primaryColor,
							  borderRadius: BorderRadius.all(Radius.circular(20)),
							  boxShadow: [
								BoxShadow(offset: Offset(1, 1), color: Colors.grey, blurRadius: 5)
							  ]
						  ),
						  child: Padding(
							padding: const EdgeInsets.all(6.0),
							child: Icon(FontAwesomeIcons.plus,
							  color: DefaultColors.powerOn ,
							),
						  )
					  ),
					),
				  ),
				],
			  ),
			)
		),
	  ],
	);
  }
}
