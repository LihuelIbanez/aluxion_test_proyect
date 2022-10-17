import 'package:aluxion_test_proyect/gallery/presentation/controllers/gallery_controller.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/appbar.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/dropdown_double_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GalleryPage extends GetView<GalleryController> {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarDiscover(),
      body: const _Content(),
    );
  }
}

class _Content extends GetView<GalleryController> {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropDownDoubleList(
        imageList: controller.imagesListValue,
        onTap: ((id, photo) => controller.loadingPhoto(id, photo)),
      ),
    );
  }
}
