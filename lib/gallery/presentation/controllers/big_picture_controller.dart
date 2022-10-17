import 'package:aluxion_test_proyect/core/utils/routes.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/photos.dart';
import 'package:get/get.dart';

class BigPictureController extends GetxController {
  BigPictureController();

  final photo = const Photos().obs;
  Photos get photoValue => photo.value;
  final id = ''.obs;
  String get idValue => id.value;

  final lowPhoto = true.obs;

  @override
  onInit() {
    super.onInit();
    id.value = Get.arguments[0];
    photo.value = Get.arguments[1];
    eliminateLowResolution();
  }

  Future<void> eliminateLowResolution() async {
    Future.delayed(const Duration(milliseconds: 1000), () {
      lowPhoto.value = false;
    });
  }

  void goToProfile() {
    Get.toNamed(Routes.authorReference, arguments: photoValue.user);
  }

  void onFloatingActionButtonPressed() {
    Get.back();
  }
}
