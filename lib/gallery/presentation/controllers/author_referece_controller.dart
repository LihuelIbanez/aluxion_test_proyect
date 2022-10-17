import 'dart:convert';
import 'package:aluxion_test_proyect/core/utils/routes.dart';
import 'package:aluxion_test_proyect/gallery/data/models/photos_models.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/photos.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthorReferenceController extends GetxController {
  AuthorReferenceController();

  final author = const User().obs;
  User get authorValue => author.value;

  late RxList<PhotosModels> imagesList = <PhotosModels>[].obs;
  List<PhotosModels> get imagesListValue => imagesList.value;

  String accessKey =
      'a2f508640cb62f314e0e0763594d40aab1c858a7ef796184067c537a88b276aa';
  @override
  void onInit() async {
    super.onInit();
    author.value = Get.arguments;
    await loadPhotos();
  }

  void onFloatingActionButtonPressed() {
    Get.back();
  }

  Future<void> loadPhotos() async {
    final String urlToAccesApi =
        'https://api.unsplash.com/users/${authorValue.username}/photos?client_id=$accessKey';
    var response = await http.get(Uri.parse(urlToAccesApi));
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      imagesList.value =
          List.from(decodedJson).map((e) => PhotosModels.fromJson(e)).toList();
    }
  }

  void loadingPhoto(String id, Photos photo) {
    Get.toNamed(Routes.bigPicture, arguments: [id, photo]);
  }
}
