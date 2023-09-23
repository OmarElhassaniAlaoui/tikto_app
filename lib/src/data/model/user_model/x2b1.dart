import 'dart:convert';

import 'package:collection/collection.dart';

class X2b1 {
  String? id;
  String? uniqueId;
  String? nickname;
  String? avatarLarger;
  String? avatarMedium;
  String? avatarThumb;

  X2b1({
    this.id,
    this.uniqueId,
    this.nickname,
    this.avatarLarger,
    this.avatarMedium,
    this.avatarThumb,
  });

  factory X2b1.fromMap(Map<String, dynamic> data) => X2b1(
        id: data['id'] as String?,
        uniqueId: data['uniqueId'] as String?,
        nickname: data['nickname'] as String?,
        avatarLarger: data['avatarLarger'] as String?,
        avatarMedium: data['avatarMedium'] as String?,
        avatarThumb: data['avatarThumb'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'uniqueId': uniqueId,
        'nickname': nickname,
        'avatarLarger': avatarLarger,
        'avatarMedium': avatarMedium,
        'avatarThumb': avatarThumb,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [X2b1].
  factory X2b1.fromJson(String data) {
    return X2b1.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [X2b1] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! X2b1) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      uniqueId.hashCode ^
      nickname.hashCode ^
      avatarLarger.hashCode ^
      avatarMedium.hashCode ^
      avatarThumb.hashCode;
}
