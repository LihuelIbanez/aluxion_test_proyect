import 'package:aluxion_test_proyect/gallery/presentation/controllers/author_referece_controller.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/author_panel.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/dropdown_double_list.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/floting_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthorReferencePage extends GetView<AuthorReferenceController> {
  const AuthorReferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FlotingActionButtonGalley(
          asWhite: true, onPressed: controller.onFloatingActionButtonPressed),
      body: const _Content(),
    );
  }
}

class _Content extends GetView<AuthorReferenceController> {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.13,
            ),
            child: AuthorPanel(
              bio: controller.authorValue.bio ?? '',
              username: controller.authorValue.name!,
              profilePicture: controller.authorValue.profileImage!.large,
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: Get.width * 0.05,
                    top: Get.height * 0.05,
                  ),
                  child: const Text(
                    'My Photos',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  ))),
          Obx(
            () => DropDownDoubleList(
              imageList: controller.imagesListValue,
              onTap: ((id, photo) => controller.loadingPhoto(id, photo)),
            ),
          )
        ],
      ),
    );
  }
}
