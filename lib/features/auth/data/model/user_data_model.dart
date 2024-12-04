import 'package:equatable/equatable.dart';

class UserDataModel with EquatableMixin {
  final String? id;
  final String? name;
  final String? email;

  UserDataModel({
    this.id,
    this.name,
    this.email,
  });

  @override
  List<Object?> get props => [id, name, email];

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );
  }
}
