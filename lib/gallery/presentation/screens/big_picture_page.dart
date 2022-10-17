import 'package:aluxion_test_proyect/gallery/presentation/controllers/big_picture_controller.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/authors_small_photo.dart';
import 'package:aluxion_test_proyect/gallery/presentation/widgets/floting_action_button.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigPicturePage extends GetView<BigPictureController> {
  const BigPicturePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FlotingActionButtonGalley(
            onPressed: controller.onFloatingActionButtonPressed),
        body: const _Content());
  }
}

class _Content extends GetView<BigPictureController> {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: controller.id,
      child: Stack(
        children: [
          BackGroundImage(
            url1: controller.photoValue.url!.thumb,
            url2: controller.photoValue.url!.regular,
            lowPhoto: controller.lowPhoto.value,
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.6,
                  1
                ],
                    colors: [
                  Colors.transparent,
                  Colors.black,
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: AuthorSmallPhoto(
              profilePicture1: controller.photoValue.user!.profileImage!.small,
              profilePicture2: controller.photoValue.user!.profileImage!.large,
              username: controller.photoValue.user!.name ?? '',
              description: controller.photoValue.description ?? '',
              likes: controller.photoValue.likes!,
              onTap: controller.goToProfile,
            ),
          ),
        ],
      ),
    );
  }
}

class BackGroundImage extends StatelessWidget {
  const BackGroundImage(
      {super.key,
      required this.lowPhoto,
      required this.url1,
      required this.url2});
  final bool lowPhoto;
  final String url1;
  final String url2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Pulse(
          duration: const Duration(milliseconds: 200),
          child: Visibility(
            visible: lowPhoto,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  url1,
                ),
              )),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              url2,
            ),
          )),
        ),
      ],
    );
  }
}
