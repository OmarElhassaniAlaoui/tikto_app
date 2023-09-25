class MobileUserModule {
  final Map<String, User> users;
  final Map<String, UserStats> stats;

  MobileUserModule({
    required this.users,
    required this.stats,
  });

  factory MobileUserModule.fromJson(Map<String, dynamic> json) {
    final usersMap = json['MobileUserModule']['users'] as Map<String, dynamic>;
    final statsMap = json['MobileUserModule']['stats'] as Map<String, dynamic>;
    
    final users = usersMap.map((key, value) => MapEntry(key, User.fromJson(value)));
    final stats = statsMap.map((key, value) => MapEntry(key, UserStats.fromJson(value)));

    return MobileUserModule(users: users, stats: stats);
  }
}

class User {
  final String id;
  final String uniqueId;
  final String? nickname;
  final String avatarLarger;
  final String avatarMedium;
  final String avatarThumb;

  User({
    required this.id,
    required this.uniqueId,
    required this.nickname,
    required this.avatarLarger,
    required this.avatarMedium,
    required this.avatarThumb,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      uniqueId: json['uniqueId'] as String,
      nickname: json['nickname']! ,
      avatarLarger: json['avatarLarger'] as String,
      avatarMedium: json['avatarMedium'] as String,
      avatarThumb: json['avatarThumb'] as String,
    );
  }
} 


class UserStats {
  final int followerCount;
  final int followingCount;
  final int heart;
  final int heartCount;
  final int videoCount;
  final int diggCount;

  UserStats({
    required this.followerCount,
    required this.followingCount,
    required this.heart,
    required this.heartCount,
    required this.videoCount,
    required this.diggCount,
  });

  factory UserStats.fromJson(Map<String, dynamic> json) {
    return UserStats(
      followerCount: json['followerCount'] as int,
      followingCount: json['followingCount'] as int,
      heart: json['heart'] as int,
      heartCount: json['heartCount'] as int,
      videoCount: json['videoCount'] as int,
      diggCount: json['diggCount'] as int,
    );
  }
}
