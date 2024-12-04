import 'package:course_app/Core/network/error/failure.dart';
import 'package:course_app/features/auth/data/model/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserModel>> login({
    required String email,
    required String password,
  });
}
