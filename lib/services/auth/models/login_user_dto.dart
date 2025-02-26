import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_dto.freezed.dart';
part 'login_user_dto.g.dart';

@freezed
class LoginUserDTO with _$LoginUserDTO {
  const factory LoginUserDTO({
    required String email,
    required String password,
  }) = _LoginUserDTO;

  factory LoginUserDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDTOFromJson(json);
}
