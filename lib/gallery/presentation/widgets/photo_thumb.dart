import 'package:flutter/material.dart';

class PhotoThumb extends StatelessWidget {
  const PhotoThumb(
      {Key? key,
      required this.id,
      required this.name,
      required this.likes,
      required this.photoLow,
      required this.index,
      this.isEven = false,
      required this.photoHigh})
      : super(key: key);
  final String id;
  final String name;
  final int likes;
  final String photoLow;
  final String photoHigh;
  final int index;
  final bool isEven;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Hero(
        tag: id,
        transitionOnUserGestures: true,
        child: Container(
          margin: EdgeInsets.only(top: index == 0 && isEven ? 60 : 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              width: 150,
              height: 250,
              child: Image.network(
                photoLow,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: index == 0 && isEven ? 60 : 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            width: 150,
            height: 250,
            child: Image.network(
              photoHigh,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: index == 0 && isEven ? 60 : 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    stops: const [0.3, 1],
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Column(
        children: [
          SizedBox(
            height: index == 0 && isEven ? 260 : 220,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )),
          Text(
            '$likes likes',
            textAlign: TextAlign.right,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),
          ),
        ],
      ),
    ]);
  }
}
