// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserDTOImpl _$$RegisterUserDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserDTOImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RegisterUserDTOImplToJson(
        _$RegisterUserDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
