import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_user_dto.freezed.dart';
part 'signed_user_dto.g.dart';

@freezed
class SignedUserDTO with _$SignedUserDTO {
  const factory SignedUserDTO({
    required int id,
    required String name,
    required String email,
    required String accessToken,
    required String role,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _SignedUserDTO;

  factory SignedUserDTO.fromJson(Map<String, dynamic> json) =>
      _$SignedUserDTOFromJson(json);
}
