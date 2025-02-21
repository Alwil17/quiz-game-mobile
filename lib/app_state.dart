// ignore_for_file: unnecessary_string_escapes, depend_on_referenced_packages

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _gamesTypes = prefs
              .getStringList('ff_gamesTypes')
              ?.map((x) {
                try {
                  return GameTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  // print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _gamesTypes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<GameTypeStruct> _gamesTypes = [
    GameTypeStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Un joueur\",\"questionNumber\":\"12\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sapientia-bl2gy3/assets/6f7er7g0mhla/Single-removebg-preview.png\"}')),
    GameTypeStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Multi-joueurs\",\"questionNumber\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sapientia-bl2gy3/assets/owx6xcdlkpiq/multi_player.png\"}')),
    GameTypeStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Apprendre\",\"questionNumber\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sapientia-bl2gy3/assets/0ng40rgr9sip/books.png\"}'))
  ];
  List<GameTypeStruct> get gamesTypes => _gamesTypes;
  set gamesTypes(List<GameTypeStruct> value) {
    _gamesTypes = value;
    prefs.setStringList(
        'ff_gamesTypes', value.map((x) => x.serialize()).toList());
  }

  void addToGamesTypes(GameTypeStruct value) {
    gamesTypes.add(value);
    prefs.setStringList(
        'ff_gamesTypes', _gamesTypes.map((x) => x.serialize()).toList());
  }

  void removeFromGamesTypes(GameTypeStruct value) {
    gamesTypes.remove(value);
    prefs.setStringList(
        'ff_gamesTypes', _gamesTypes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromGamesTypes(int index) {
    gamesTypes.removeAt(index);
    prefs.setStringList(
        'ff_gamesTypes', _gamesTypes.map((x) => x.serialize()).toList());
  }

  void updateGamesTypesAtIndex(
    int index,
    GameTypeStruct Function(GameTypeStruct) updateFn,
  ) {
    gamesTypes[index] = updateFn(_gamesTypes[index]);
    prefs.setStringList(
        'ff_gamesTypes', _gamesTypes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInGamesTypes(int index, GameTypeStruct value) {
    gamesTypes.insert(index, value);
    prefs.setStringList(
        'ff_gamesTypes', _gamesTypes.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

// ignore: unused_element
Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
