import 'package:mobx/mobx.dart';

part 'SelectItemRoomStore.g.dart';

class SelectItemRoomStore = _SelectItemRoomStore with _$SelectItemRoomStore;

abstract class _SelectItemRoomStore with Store{
   @observable
   bool unselected = true;

   @action
   void unselectAll() {unselected = false; unselected = true;}
}