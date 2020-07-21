import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  final Color color;

  const ItemColor({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
	  width: 27,
	  height: 27,
	  decoration: BoxDecoration(
		  borderRadius: BorderRadius.all(
			  Radius.circular(20)
		  ),
		  color: this.color
	  ),
	);
  }
}
