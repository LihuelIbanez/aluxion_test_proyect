import 'package:aluxion_test_proyect/gallery/bindings/author_reference_bindings.dart';
import 'package:aluxion_test_proyect/gallery/bindings/big_picture_bindings.dart';
import 'package:aluxion_test_proyect/gallery/bindings/gallery_bindings.dart';
import 'package:aluxion_test_proyect/gallery/presentation/screens/author_reference_page.dart';
import 'package:aluxion_test_proyect/gallery/presentation/screens/big_picture_page.dart';
import 'package:aluxion_test_proyect/gallery/presentation/screens/gallery_page.dart';
import 'package:aluxion_test_proyect/gallery/presentation/screens/splash_screen_page.dart';
import 'package:get/get.dart';

class Routes {
  static const splashScreen = '/splashScreen';
  static const gallery = '/gallery';
  static const authorReference = '/author';
  static const bigPicture = '/bigPicture';
}

class Pages {
  static final pages = [
    GetPage(
        name: Routes.gallery,
        page: (() => const GalleryPage()),
        binding: GalleryBindings()),
    GetPage(
        name: Routes.authorReference,
        page: (() => const AuthorReferencePage()),
        binding: AuthorReferenceBindings()),
    GetPage(
        name: Routes.bigPicture,
        page: (() => const BigPicturePage()),
        binding: BigPictureBindings()),
    GetPage(
      name: Routes.splashScreen,
      page: (() => const SplashScreen()),
    ),
  ];
}
