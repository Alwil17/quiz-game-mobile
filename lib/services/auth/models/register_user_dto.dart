import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_dto.freezed.dart';
part 'register_user_dto.g.dart';

@freezed
class RegisterUserDTO with _$RegisterUserDTO {
  const factory RegisterUserDTO({
    required String name,
    required String email,
    required String password,
  }) = _RegisterUserDTO;

  factory RegisterUserDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserDTOFromJson(json);
}
