import 'package:get_it/get_it.dart';
import 'package:light_control/stores/SelectItemRoomStore.dart';

class Injectors{
  static final Injectors instance = Injectors._();
  Injectors._();

  void initialize(){
    GetIt.I.registerLazySingleton(() => SelectItemRoomStore());
  }
}