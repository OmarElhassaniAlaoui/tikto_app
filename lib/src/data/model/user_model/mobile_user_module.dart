import 'dart:convert';

import 'package:collection/collection.dart';

import 'stats.dart';
import 'users.dart';

class MobileUserModule {
  Users? users;
  Stats? stats;

  MobileUserModule({this.users, this.stats});

  factory MobileUserModule.fromMap(Map<String, dynamic> data) {
    return MobileUserModule(
      users: data['users'] == null
          ? null
          : Users.fromMap(data['users'] as Map<String, dynamic>),
      stats: data['stats'] == null
          ? null
          : Stats.fromMap(data['stats'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'users': users?.toMap(),
        'stats': stats?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MobileUserModule].
  factory MobileUserModule.fromJson(String data) {
    return MobileUserModule.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MobileUserModule] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! MobileUserModule) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => users.hashCode ^ stats.hashCode;
}
