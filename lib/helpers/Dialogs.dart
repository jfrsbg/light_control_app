import 'package:flutter/material.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class Dialogs {
  static void addRoomPart(
    BuildContext context, {
    bool dismissible = true,
  }) {
    ///TODO: make a layout for add a room part. Need to have a title and select an Icon to represent the room part.
    /// The icons can be in a fixed list and the user can select an icon to represent that part of the room
    showDialog(
      builder: (context) {
        return AlertDialog(
          title: Text(
            "ola",
            textAlign: TextAlign.center,
          ),
          content: Container(
            width: 20,
            height: 20,
            color: Colors.green,
          ),
          actions: [],
        );
      },
      context: context,
      barrierDismissible: dismissible,
      barrierColor: DefaultColors.gray.withOpacity(0.7),
    );
  }
}
