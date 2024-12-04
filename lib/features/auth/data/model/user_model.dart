import 'package:course_app/features/auth/data/model/user_data_model.dart';
import 'package:equatable/equatable.dart';

class UserModel with EquatableMixin {
  final String? token;
  final String? expires;
  final UserDataModel? user;

  UserModel({
    this.token,
    this.expires,
    this.user,
  });

  @override
  List<Object?> get props => [token, expires, user];

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'] as String?,
      expires: json['expires'] as String?,
      user: json['user'] == null
          ? null
          : UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
    );
  }
}
