// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedUserDTOImpl _$$SignedUserDTOImplFromJson(Map<String, dynamic> json) =>
    _$SignedUserDTOImpl(
      id: (json['id'] as num).toInt(),
      name: (json['name']??"") as String,
      email: (json['email']??"") as String,
      accessToken: (json['accessToken']??"") as String,
      role: (json['role']??"") as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SignedUserDTOImplToJson(_$SignedUserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'role': instance.role,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
