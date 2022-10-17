import 'package:aluxion_test_proyect/gallery/data/models/user_models.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/photos.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/user.dart';

class PhotosInformationModels extends PhotosInformation {
  const PhotosInformationModels({required List<Photos> photos})
      : super(photos: photos);
  factory PhotosInformationModels.fromJson(Map<String, dynamic> json) {
    final List<Photos> photos = [];
    json['photos'].forEach((e) {
      photos.add(PhotosModels.fromJson(e));
    });
    return PhotosInformationModels(photos: photos);
  }
}

class PhotosModels extends Photos {
  const PhotosModels({
    String? id,
    double? width,
    double? height,
    int? likes,
    User? user,
    String? description,
    required PhotosUrl url,
    String? downloadUrl,
  }) : super(
          id: id,
          width: width,
          height: height,
          likes: likes,
          user: user,
          description: description,
          url: url,
          downloadUrl: downloadUrl,
        );
  factory PhotosModels.fromJson(Map<String, dynamic> json) {
    return PhotosModels(
      id: json['id'],
      width: json['width'].toDouble(),
      height: json['height'].toDouble(),
      likes: json['likes'],
      user: UserModels.fromJson(json['user']),
      description: json['description'],
      url: PhotosUrlModels.fromJson(json['urls']),
      downloadUrl: json['download_url'],
    );
  }
}

class PhotosUrlModels extends PhotosUrl {
  const PhotosUrlModels({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) : super(
          raw: raw,
          full: full,
          regular: regular,
          small: small,
          thumb: thumb,
        );
  factory PhotosUrlModels.fromJson(Map<String, dynamic> json) {
    return PhotosUrlModels(
      raw: json['raw'],
      full: json['full'],
      regular: json['regular'],
      small: json['small'],
      thumb: json['thumb'],
    );
  }
}
