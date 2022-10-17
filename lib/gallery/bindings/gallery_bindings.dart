import 'package:aluxion_test_proyect/gallery/presentation/controllers/gallery_controller.dart';
import 'package:get/get.dart';

class GalleryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GalleryController>(
      () => GalleryController(),
    );
  }
}
