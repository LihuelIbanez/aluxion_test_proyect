import 'dart:convert';
import 'package:aluxion_test_proyect/core/utils/routes.dart';
import 'package:aluxion_test_proyect/gallery/data/models/photos_models.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/photos.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class GalleryController extends GetxController {
  String accessKey =
      'a2f508640cb62f314e0e0763594d40aab1c858a7ef796184067c537a88b276aa';
  String secretKey =
      '4ea19af370997bcb0c580c071437661346b073b8e2f5252871e171ecc3c783ee';

  var isDateLoadCompleted = false.obs;
  late RxList<PhotosModels> imagesList = <PhotosModels>[].obs;
  List<PhotosModels> get imagesListValue => imagesList.value;

  @override
  void onInit() async {
    super.onInit();
    await loadPhotos();
  }

  Future<void> loadPhotos() async {
    final String urlToAccesApi =
        'https://api.unsplash.com/photos/?per_page=30&client_id=$accessKey';
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
