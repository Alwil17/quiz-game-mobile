// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameTypeStruct extends BaseStruct {
  GameTypeStruct({
    String? label,
    int? questionNumber,
    String? image,
  })  : _label = label,
        _questionNumber = questionNumber,
        _image = image;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "questionNumber" field.
  int? _questionNumber;
  int get questionNumber => _questionNumber ?? 0;
  set questionNumber(int? val) => _questionNumber = val;

  void incrementQuestionNumber(int amount) =>
      questionNumber = questionNumber + amount;

  bool hasQuestionNumber() => _questionNumber != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static GameTypeStruct fromMap(Map<String, dynamic> data) => GameTypeStruct(
        label: data['label'] as String?,
        questionNumber: castToType<int>(data['questionNumber']),
        image: data['image'] as String?,
      );

  static GameTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? GameTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'questionNumber': _questionNumber,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'questionNumber': serializeParam(
          _questionNumber,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static GameTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      GameTypeStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        questionNumber: deserializeParam(
          data['questionNumber'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GameTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GameTypeStruct &&
        label == other.label &&
        questionNumber == other.questionNumber &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([label, questionNumber, image]);
}

GameTypeStruct createGameTypeStruct({
  String? label,
  int? questionNumber,
  String? image,
}) =>
    GameTypeStruct(
      label: label,
      questionNumber: questionNumber,
      image: image,
    );
