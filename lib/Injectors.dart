import 'package:get_it/get_it.dart';
import 'package:light_control/stores/SelectItemRoomStore.dart';

import 'stores/room/RoomStore.dart';

//Class to register singletons with GetIt
class Injectors{
  static final Injectors instance = Injectors._();
  Injectors._();

  void initialize(){
    GetIt.I.registerLazySingleton<SelectItemRoomStore>(() => SelectItemRoomStore());
    GetIt.I.registerLazySingleton<RoomStore>(() => RoomStore());
  }
}