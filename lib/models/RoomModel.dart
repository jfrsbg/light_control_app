import 'package:flutter/material.dart';
import 'package:light_control/models/RoomPartModel.dart';

class RoomModel{
  int id;
  String name;
  int numberOfLights;
  String imagePath;
  Image imageObject;
  List<RoomPartModel> roomParts;
}