import 'dart:convert';

import 'package:collection/collection.dart';

import 'x2b1.dart';

class Users {
  X2b1? x2b1;

  Users({this.x2b1});

  factory Users.fromMap(Map<String, dynamic> data) => Users(
        x2b1: data['x2b1'] == null
            ? null
            : X2b1.fromMap(data['x2b1'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'x2b1': x2b1?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Users].
  factory Users.fromJson(String data) {
    return Users.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Users] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Users) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => x2b1.hashCode;
}
