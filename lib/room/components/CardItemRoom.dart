import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:light_control/stores/SelectItemRoomStore.dart';
import 'package:mobx/mobx.dart';

class CardItemRoom extends StatefulWidget {

  final IconData icon;
  final String title;

  const CardItemRoom({this.icon, this.title});

  @override
  _CardItemRoomState createState() => _CardItemRoomState();
}

class _CardItemRoomState extends State<CardItemRoom> {
  final selectItem = GetIt.I.get<SelectItemRoomStore>();
  bool selected = false;

  void onTap(){
    selectItem.unselectAll();
    setState(() {
      selected = true;
    });
  }

  @override
  void initState() {
    super.initState();

    autorun((_){
      setState(() {
        selected = !selectItem.unselected;
      });
    });
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
                    child: Text(this.widget.title,
                      textAlign: TextAlign.center,
                      style: selected ? Theme.of(context).textTheme.bodyText2 : Theme.of(context).textTheme.subtitle1,
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
