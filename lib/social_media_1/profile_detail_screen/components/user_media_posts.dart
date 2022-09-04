import 'package:flutter/material.dart';

class UserMediaPosts extends StatelessWidget {
  final List<String> imagesUrl;

  const UserMediaPosts({
    super.key,
    required this.imagesUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 220,
          width: double.infinity,
          child: Stack(
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagesUrl.length + 1,
                itemBuilder: ((context, index) {
                  if (index == 0) {
                    return const SizedBox(
                      width: 100,
                      height: 220,
                    );
                  } else {
                    final image = imagesUrl[index - 1];
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }
                }),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 10,
                child: SizedBox(
                  child: Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(80, 88, 92, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '73',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'MEDIA',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
