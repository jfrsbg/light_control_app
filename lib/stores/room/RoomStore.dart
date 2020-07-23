import 'package:mobx/mobx.dart';

part 'RoomStore.g.dart';

class RoomStore = _RoomStore with _$RoomStore;

abstract class _RoomStore with Store{
   double minIntensity = 0;
   double maxIntensity = 10;

   @observable
   bool lightOn = false;

   @observable
   double lightIntensity = 0;

   @action
   void setLightOn(bool value) => lightOn = value;

   @action
   void setLightIntensity(double value) => lightIntensity = value;
}