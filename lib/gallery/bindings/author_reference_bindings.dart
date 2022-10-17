import 'package:aluxion_test_proyect/gallery/presentation/controllers/author_referece_controller.dart';
import 'package:get/get.dart';

class AuthorReferenceBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthorReferenceController>(
      () => AuthorReferenceController(),
    );
  }
}
