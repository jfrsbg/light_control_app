import 'package:flutter/material.dart';

class ItemRoom extends StatefulWidget {

  final IconData icon;
  final String title;

  const ItemRoom({this.icon, this.title});

  @override
  _ItemRoomState createState() => _ItemRoomState();
}

class _ItemRoomState extends State<ItemRoom> {
  bool selected = false;

  void onTap(){
    setState(() {
      selected = !selected;
    });
    print("asd");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onTap,
      child: Card(
        color: selected ? Theme.of(context).primaryColorDark : Theme.of(context).primaryColor,
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
                  child: Icon(this.widget.icon, color: selected ? Theme.of(context).primaryColor : Theme.of(context).accentColor),
                ),
                Expanded(
                    flex: 3,
                    child: Text(this.widget.title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle1,)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
