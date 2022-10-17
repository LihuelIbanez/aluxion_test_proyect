import 'package:flutter/material.dart';

class AuthorSmallPhoto extends StatelessWidget {
  const AuthorSmallPhoto(
      {super.key,
      required this.username,
      required this.onTap,
      required this.description,
      required this.likes,
      required this.profilePicture1,
      required this.profilePicture2});
  final String profilePicture1;
  final String profilePicture2;
  final String username;
  final String description;
  final Function onTap;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap as void Function(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  description,
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 20, bottom: 15),
                child: Text(
                  '$likes likes',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30, right: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                profilePicture1,
                              ),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, right: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                profilePicture2,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        'View profile',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ]));
  }
}
