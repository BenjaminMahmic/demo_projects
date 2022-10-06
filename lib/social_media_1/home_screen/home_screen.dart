import 'package:demo_projects/social_media_1/dummy_data.dart';
import 'package:flutter/material.dart';

import '../profile_detail_screen/profile_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  double _opacity = 1;
  bool _isLongPress = false;
  double _swipeUpStartPosition = 0;
  bool _swipeUpSucces = false;

  @override
  Widget build(BuildContext context) {
    final currentUser = users[_currentIndex];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          currentUser.socialMediaName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onLongPress: () {
          setState(() {
            _isLongPress = true;
          });
        },
        onLongPressEnd: (_) {
          setState(() {
            _isLongPress = false;
          });
        },
        onVerticalDragEnd: (_) {
          _swipeUpStartPosition = 0;
          _swipeUpSucces = false;
        },
        onVerticalDragUpdate: (details) {
          if (_swipeUpStartPosition == 0) {
            _swipeUpStartPosition = details.localPosition.dy;
          }
          var swipeUpEndPosition = details.localPosition.dy;

          if (swipeUpEndPosition < _swipeUpStartPosition - 100 &&
              !_swipeUpSucces) {
            _swipeUpSucces = true;

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileDetailScreen(
                  user: currentUser,
                ),
              ),
            );

            Future.delayed(const Duration(seconds: 1), () {
              _swipeUpSucces = false;
            });
          }
        },
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (i) {
                setState(() {
                  _opacity = 0;
                });

                Future.delayed(const Duration(milliseconds: 150), () {
                  setState(() {
                    _currentIndex = i;
                    _opacity = 1;
                  });
                });
              },
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];

                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(user.welcomeImageUrl),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        _isLongPress ? Colors.black12 : Colors.black45,
                        BlendMode.darken,
                      ),
                    ),
                  ),
                );
              },
            ),
            AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 500),
              bottom: _isLongPress ? -MediaQuery.of(context).size.height : 0,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 300),
                opacity: _opacity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        currentUser.realName,
                        style: const TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        currentUser.profession,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: currentUser.images.length + 1,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return const SizedBox(width: 80);
                              } else {
                                final image = currentUser.images[index - 1];
                                return Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                (currentUser.images.length + 50).toString(),
                                style: const TextStyle(
                                  fontSize: 32,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'POSTS',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                currentUser.following.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const Text(
                                'FOLLOWING',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${currentUser.followers.toString()} K',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const Text(
                                'FOLLOWERS',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text('Following'),
                          ),
                          const SizedBox(width: 15),
                          const Icon(
                            Icons.message,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Swipe up to see the profile in detail',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
