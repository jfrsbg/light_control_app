import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:light_control/stores/room/RoomStore.dart';
import 'package:light_control/theme/DefaultTheme.dart';

class CustomSlider extends StatelessWidget {
  final roomStore = GetIt.I.get<RoomStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_){
        return Slider(
          value: roomStore.lightIntensity,
          onChanged: roomStore.setLightIntensity,
          min: roomStore.minIntensity,
          max: roomStore.maxIntensity,
          divisions: 10,
          label: "${roomStore.lightIntensity.toInt()}",
          activeColor: DefaultColors.light,
        );
      },
    );
  }
}
