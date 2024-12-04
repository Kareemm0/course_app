import 'package:bloc/bloc.dart';
import 'package:course_app/Core/cache/shared_pref.dart';
import 'package:course_app/Core/constant/app_shared_pref_keys.dart';
import 'package:course_app/features/auth/domain/repos/login_repo.dart';
import 'package:course_app/features/auth/presentation/cubit/login/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _repo;
  LoginCubit(this._repo) : super(InitialState());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    final isVaild = formKey.currentState!.validate();
    emit(LoginLoadingStateState());

    if (isVaild) {
      final result = await _repo.login(
          email: emailController.text, password: passwordController.text);

      result.fold((failure) {
        emit(LoginFailureState(failure.message));
      }, (success) async {
        await SharedPref()
            .set(AppSharedPrefrencesKeys.tokenKey, success.token!);
        emit(LoginSuccessState(success));
      });
    }
  }
}
