// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SelectItemRoomStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectItemRoomStore on _SelectItemRoomStore, Store {
  final _$unselectedAtom = Atom(name: '_SelectItemRoomStore.unselected');

  @override
  bool get unselected {
    _$unselectedAtom.reportRead();
    return super.unselected;
  }

  @override
  set unselected(bool value) {
    _$unselectedAtom.reportWrite(value, super.unselected, () {
      super.unselected = value;
    });
  }

  final _$_SelectItemRoomStoreActionController =
      ActionController(name: '_SelectItemRoomStore');

  @override
  void unselectAll() {
    final _$actionInfo = _$_SelectItemRoomStoreActionController.startAction(
        name: '_SelectItemRoomStore.unselectAll');
    try {
      return super.unselectAll();
    } finally {
      _$_SelectItemRoomStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
unselected: ${unselected}
    ''';
  }
}
