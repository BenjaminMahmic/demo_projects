import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;

  const ProfileImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Center(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              left: 0,
              top: 30,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromRGBO(80, 88, 92, 1),
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            const Positioned(
              left: 15,
              bottom: 23,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Color.fromRGBO(50, 250, 181, 1),
              ),
            ),
            const Positioned(
              right: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromRGBO(80, 88, 92, 1),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
