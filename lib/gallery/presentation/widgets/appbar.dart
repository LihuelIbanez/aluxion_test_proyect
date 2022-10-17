import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AppBarDiscover extends StatelessWidget with PreferredSizeWidget {
  AppBarDiscover({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: ZoomIn(
          child: const Text('Discover',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 29,
                  fontWeight: FontWeight.w800))),
      centerTitle: true,
      bottomOpacity: 0.0,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
