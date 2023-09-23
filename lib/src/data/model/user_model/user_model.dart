import 'dart:convert';

import 'package:collection/collection.dart';

import 'mobile_user_module.dart';

class UserModel {
  MobileUserModule? mobileUserModule;

  UserModel({this.mobileUserModule});

  factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
        mobileUserModule: data['MobileUserModule'] == null
            ? null
            : MobileUserModule.fromMap(
                data['MobileUserModule'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'MobileUserModule': mobileUserModule?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserModel].
  factory UserModel.fromJson(String data) {
    return UserModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserModel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! UserModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => mobileUserModule.hashCode;
}
