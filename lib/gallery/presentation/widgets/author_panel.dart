import 'package:flutter/material.dart';

class AuthorPanel extends StatelessWidget {
  const AuthorPanel(
      {super.key,
      required this.profilePicture,
      required this.username,
      required this.bio});
  final String profilePicture;
  final String username;
  final String bio;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 63,
          height: 63,
          margin: const EdgeInsetsDirectional.only(end: 20, start: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(profilePicture),
              )),
        ),
        Column(
          children: [
            SizedBox(
              width: 256,
              height: 25,
              child: Text(
                username,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    height: 1,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              width: 256,
              height: 61,
              child: Text(
                bio,
                maxLines: 3,
                textAlign: TextAlign.left,
                overflow: TextOverflow.fade,
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ],
        )
      ],
    );
  }
}
