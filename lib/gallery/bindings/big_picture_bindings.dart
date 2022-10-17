import 'package:aluxion_test_proyect/gallery/presentation/controllers/big_picture_controller.dart';
import 'package:get/get.dart';

class BigPictureBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BigPictureController>(
      () => BigPictureController(),
    );
  }
}
