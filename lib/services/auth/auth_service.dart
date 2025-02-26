import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../api/dio_client.dart';
import 'models/login_user_dto.dart';
import 'models/register_user_dto.dart';
import 'models/signed_user_dto.dart';

part 'auth_service.g.dart';

@riverpod
class AuthService extends _$AuthService {
  @override
  Future<void> build() async {}

  Future<SignedUserDTO> login(LoginUserDTO loginData) async {
    try {
      final dio = ref.read(dioProvider);
      final response = await dio.post(
        '/api/auth/signin',
        data: loginData.toJson(),
      );
      return SignedUserDTO.fromJson(response.data);
    } on DioException catch (e, trace) {
      debugPrintStack(stackTrace: trace);
      if (e.response?.statusCode == 409) {
        throw 'Invalid email or password';
      }
      throw 'An error occurred during login';
    }
  }

  Future<SignedUserDTO> register(RegisterUserDTO registerData) async {
    try {
      final dio = ref.read(dioProvider);
      final response = await dio.post(
        '/api/auth/signup',
        data: registerData.toJson(),
      );
      return SignedUserDTO.fromJson(response.data);
    } on DioException catch (e, trace) {
      debugPrintStack(stackTrace: trace);
      if (e.response?.statusCode == 409) {
        throw 'Email already exists';
      }
      throw 'An error occurred during registration';
    }
  }
}
