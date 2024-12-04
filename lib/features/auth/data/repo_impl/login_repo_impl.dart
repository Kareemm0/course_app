import 'package:course_app/Core/network/error/failure.dart';
import 'package:course_app/features/auth/data/datasoruce/base/login_data_source.dart';
import 'package:course_app/features/auth/data/model/user_model.dart';
import 'package:course_app/features/auth/domain/repos/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginDataSource _source;

  LoginRepoImpl(this._source);
  @override
  Future<Either<Failure, UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _source.login(
        email: email,
        password: password,
      );
      if (!(response['message'] as bool)) {
        // if (response.containsKey('error')) {
        //   return Left(ServerFailure(response['error']['Email'][0] as String));
        // }
        return Left(ServerFailure(response['message'] as String));
      }
      return Right(UserModel.fromJson(response['data']));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
