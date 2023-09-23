import 'dart:convert';

import 'package:collection/collection.dart';

import 'x2b1.dart';

class Stats {
  X2b1? x2b1;

  Stats({this.x2b1});

  factory Stats.fromMap(Map<String, dynamic> data) => Stats(
        x2b1: data['x2b1'] == null
            ? null
            : X2b1.fromMap(data['x2b1'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'x2b1': x2b1?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Stats].
  factory Stats.fromJson(String data) {
    return Stats.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Stats] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Stats) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => x2b1.hashCode;
}
