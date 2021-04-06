import 'dart:convert';

import 'package:flutter/foundation.dart';

class PasswordDataModel {
  final String oldPassword;
  final String newPassword;
  final String passwordConfirmation;
  PasswordDataModel({
    @required this.oldPassword,
    @required this.newPassword,
    @required this.passwordConfirmation,
  });

  PasswordDataModel copyWith({
    String oldPassword,
    String newPassword,
    String passwordConfirmation,
  }) {
    return PasswordDataModel(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
      passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'oldPassword': oldPassword,
      'newPassword': newPassword,
      'passwordConfirmation': passwordConfirmation,
    };
  }

  factory PasswordDataModel.fromMap(Map<String, dynamic> map) {
    return PasswordDataModel(
      oldPassword: map['oldPassword'],
      newPassword: map['newPassword'],
      passwordConfirmation: map['passwordConfirmation'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PasswordDataModel.fromJson(String source) =>
      PasswordDataModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'PasswordDataModel(oldPassword: $oldPassword, newPassword: $newPassword, passwordConfirmation: $passwordConfirmation)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PasswordDataModel &&
        other.oldPassword == oldPassword &&
        other.newPassword == newPassword &&
        other.passwordConfirmation == passwordConfirmation;
  }

  @override
  int get hashCode =>
      oldPassword.hashCode ^
      newPassword.hashCode ^
      passwordConfirmation.hashCode;
}
