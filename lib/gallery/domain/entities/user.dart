import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id;
  final String? username;
  final String? name;
  final String? portfolioUrl;
  final String? bio;
  final int? totalphotos;
  final ProfileImage? profileImage;

  const User({
    this.id,
    this.username,
    this.name,
    this.profileImage,
    this.portfolioUrl,
    this.bio,
    this.totalphotos,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        name,
        profileImage,
        portfolioUrl,
      ];
}

class ProfileImage extends Equatable {
  final String small;
  final String medium;
  final String large;

  const ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  @override
  List<Object?> get props => [
        small,
        medium,
        large,
      ];
}
