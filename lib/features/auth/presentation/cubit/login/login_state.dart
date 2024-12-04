import 'package:course_app/features/auth/data/model/user_model.dart';

abstract class LoginState {}

class InitialState extends LoginState {}

class LoginLoadingStateState extends LoginState {}

class LoginSuccessState extends LoginState {
  final UserModel user;

  LoginSuccessState(this.user);
}

class LoginFailureState extends LoginState {
  final String message;

  LoginFailureState(this.message);
}
