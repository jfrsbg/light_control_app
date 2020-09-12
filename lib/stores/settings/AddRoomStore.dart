import 'package:light_control/models/RoomModel.dart';
import 'package:mobx/mobx.dart';
part 'AddRoomStore.g.dart';

class AddRoomStore = _AddRoomStoreBase with _$AddRoomStore;

abstract class _AddRoomStoreBase with Store {
  RoomModel room = RoomModel();
}
