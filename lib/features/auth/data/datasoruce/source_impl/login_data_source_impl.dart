import 'package:course_app/Core/constant/end_points.dart';
import 'package:course_app/Core/network/dio/base_dio.dart';
import 'package:course_app/features/auth/data/datasoruce/base/login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final BaseDio _dio;

  LoginDataSourceImpl(this._dio);
  @override
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        EndPoints.login,
        data: {
          "email": email,
          "password": password,
        },
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
