import 'package:aluxion_test_proyect/gallery/domain/entities/user.dart';

class UserModels extends User {
  const UserModels({
    String? id,
    String? username,
    String? name,
    String? portfolioUrl,
    String? bio,
    int? totalphotos,
    ProfileImage? profileImage,
  }) : super(
          id: id,
          username: username,
          name: name,
          portfolioUrl: portfolioUrl,
          bio: bio,
          totalphotos: totalphotos,
          profileImage: profileImage,
        );
  factory UserModels.fromJson(Map<String, dynamic> json) {
    return UserModels(
      id: json['id'],
      username: json['username'],
      name: json['name'],
      profileImage: ProfileImageModels.fromJson(json['profile_image']),
      portfolioUrl: json['portfolio_url'],
      bio: json['bio'],
      totalphotos: json['total_photos'],
    );
  }
}

class ProfileImageModels extends ProfileImage {
  const ProfileImageModels({
    required String small,
    required String medium,
    required String large,
  }) : super(
          small: small,
          medium: medium,
          large: large,
        );
  factory ProfileImageModels.fromJson(Map<String, dynamic> json) {
    return ProfileImageModels(
      small: json['small'],
      medium: json['medium'],
      large: json['large'],
    );
  }
}
