// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RoomStore on _RoomStore, Store {
  final _$lightOnAtom = Atom(name: '_RoomStore.lightOn');

  @override
  bool get lightOn {
    _$lightOnAtom.reportRead();
    return super.lightOn;
  }

  @override
  set lightOn(bool value) {
    _$lightOnAtom.reportWrite(value, super.lightOn, () {
      super.lightOn = value;
    });
  }

  final _$lightIntensityAtom = Atom(name: '_RoomStore.lightIntensity');

  @override
  double get lightIntensity {
    _$lightIntensityAtom.reportRead();
    return super.lightIntensity;
  }

  @override
  set lightIntensity(double value) {
    _$lightIntensityAtom.reportWrite(value, super.lightIntensity, () {
      super.lightIntensity = value;
    });
  }

  final _$_RoomStoreActionController = ActionController(name: '_RoomStore');

  @override
  void setLightOn(bool value) {
    final _$actionInfo =
        _$_RoomStoreActionController.startAction(name: '_RoomStore.setLightOn');
    try {
      return super.setLightOn(value);
    } finally {
      _$_RoomStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLightIntensity(double value) {
    final _$actionInfo = _$_RoomStoreActionController.startAction(
        name: '_RoomStore.setLightIntensity');
    try {
      return super.setLightIntensity(value);
    } finally {
      _$_RoomStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lightOn: ${lightOn},
lightIntensity: ${lightIntensity}
    ''';
  }
}
