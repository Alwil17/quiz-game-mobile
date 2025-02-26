import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://localhost:3000', // Update with your API base URL
      contentType: 'application/json',
      responseType: ResponseType.json,
    ),
  );

  return dio;
}
