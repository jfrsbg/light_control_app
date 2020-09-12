import 'package:light_control/models/RoomModel.dart';
import 'package:mobx/mobx.dart';
part 'SettingsStore.g.dart';

class SettingsStore = _SettingsStoreBase with _$SettingsStore;

abstract class _SettingsStoreBase with Store {
  List<RoomModel> roomList = <RoomModel>[].asObservable();
}
