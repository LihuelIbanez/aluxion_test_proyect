import 'package:aluxion_test_proyect/gallery/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class PhotosInformation extends Equatable {
  final List<Photos> photos;
  const PhotosInformation({required this.photos});
  @override
  List<Object?> get props => [photos];
}

class Photos extends Equatable {
  final String? id;
  final String? author;
  final double? width;
  final double? height;
  final int? likes;
  final User? user;
  final String? description;
  final PhotosUrl? url;
  final String? downloadUrl;

  const Photos({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
    this.likes,
    this.user,
    this.description,
  });

  @override
  List<Object?> get props => [
        id,
        author,
        width,
        height,
        url,
        downloadUrl,
      ];
}

class PhotosUrl extends Equatable {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  const PhotosUrl({
    required this.full,
    required this.raw,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  @override
  List<Object?> get props => [
        raw,
        full,
        regular,
      ];
}
