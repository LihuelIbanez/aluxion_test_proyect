import 'package:flutter/material.dart';
import 'package:aluxion_test_proyect/gallery/data/models/photos_models.dart';
import 'package:aluxion_test_proyect/gallery/domain/entities/photos.dart';

import 'photo_thumb.dart';

typedef CheckCallback = void Function(String id, Photos photo);

class DropDownDoubleList extends StatelessWidget {
  DropDownDoubleList({
    Key? key,
    required this.imageList,
    required this.onTap,
  }) : super(key: key);
  final CheckCallback onTap;
  final List<PhotosModels> imageList;
  final List<PhotosModels> evenList = [];
  final List<PhotosModels> oddList = [];

  void makingLists() {
    for (int i = 0; i < imageList.length; i++) {
      if (i % 2 == 0) {
        evenList.add(imageList[i]);
      } else {
        oddList.add(imageList[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    makingLists();
    return Stack(
      children: [
        SingleChildScrollView(
          child: Stack(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: oddList.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          onTap(oddList[index].id!, oddList[index]);
                        },
                        child: PhotoThumb(
                          name: oddList[index].description ?? '',
                          likes: oddList[index].likes!,
                          photoLow: oddList[index].url!.thumb,
                          photoHigh: oddList[index].url!.regular,
                          index: index,
                          id: oddList[index].id!,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: evenList.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () =>
                            onTap(evenList[index].id!, evenList[index]),
                        child: PhotoThumb(
                          name: evenList[index].description ?? '',
                          likes: evenList[index].likes!,
                          photoLow: evenList[index].url!.thumb,
                          photoHigh: evenList[index].url!.regular,
                          index: index,
                          isEven: true,
                          id: evenList[index].id!,
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ],
          ),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.0),
                Colors.white.withOpacity(0.8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
