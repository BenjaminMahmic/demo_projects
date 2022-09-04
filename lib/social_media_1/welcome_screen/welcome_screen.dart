import 'package:demo_projects/social_media_1/home_screen/home_screen.dart';
import 'package:demo_projects/social_media_1/welcome_screen/components/random_user_card.dart';
import 'package:flutter/material.dart';

class App1MainScreen extends StatelessWidget {
  static const String routeName = '/App1MainScreen';

  const App1MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 29, 1),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      SizedBox(height: 25),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/young-man-with-backpack-taking-selfie-portrait-on-a-mountain-smiling-picture-id1329031407?k=20&m=1329031407&s=612x612&w=0&h=RBKV7V7kEJpGc-tU8t3ZKV7USuK8xbCOXoyAZ3s6KLA=',
                        userName: 'Rido',
                        opacity: .3,
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/close-up-young-smiling-man-in-casual-clothes-posing-isolated-on-blue-picture-id1270987867?k=20&m=1270987867&s=612x612&w=0&h=lX9Y1qUxtWOa0W0Mc-SvNta00UH0-sgJQItkxfwE4uU=',
                        userName: 'Sulis',
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/thisis-what-its-all-about-picture-id1155613377?k=20&m=1155613377&s=612x612&w=0&h=OP7Juu4h8aHulb9pml8AqjYYaCihnbDieSc0Uo7wjbU=',
                        userName: 'John',
                        opacity: .4,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 80),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/portrait-of-a-smiling-fit-young-man-with-earphones-in-his-ears-taking-picture-id1208559331?k=20&m=1208559331&s=612x612&w=0&h=_Zl5ZWjOEHxp2TGENKTXv4Wq2Xd0_oGyBcnvirimXyE=',
                        userName: 'Jihan',
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/portrait-of-positive-successful-confident-comic-trendy-guy-with-on-picture-id931669856?k=20&m=931669856&s=612x612&w=0&h=KCd0yU0KvmTHzexhFf9BT2tzEEPJPDHR434OaZWIM7w=',
                        userName: 'Wohy',
                        opacity: .4,
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/man-making-selfie-outdoor-picture-id541122492?k=20&m=541122492&s=612x612&w=0&h=AJdCiVAbQ-vCGkIIXPAIH26x3dHeYWwVv4n1IepAsXk=',
                        userName: 'Kenan',
                        opacity: .3,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/the-perfect-backdrop-for-our-love-picture-id938524880?k=20&m=938524880&s=612x612&w=0&h=TtspKFSbE1sIV7-g0FvmYF7EG0wEfcT-qT_Fxctwxcw=',
                        userName: 'Renan',
                        opacity: .2,
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/dj-taking-selfie-at-home-recording-studio-picture-id1180572690?k=20&m=1180572690&s=612x612&w=0&h=QQHC5ObZC9gOnGW8p30ISf-bybw3iuMpbVyBYzzASuk=',
                        userName: 'Oji',
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://media.istockphoto.com/photos/man-with-white-cat-on-the-window-picture-id970732924?k=20&m=970732924&s=612x612&w=0&h=0WhrEG5TXKJ06l0MFoolVLhnkkOK3JkgkX5WOjQVcQE=',
                        userName: 'Aly',
                        opacity: .2,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(27, 27, 29, 1),
                    const Color.fromRGBO(27, 27, 29, 1),
                    const Color.fromARGB(255, 21, 21, 1).withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Find New Friends\nWith Sosmad!',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'With sosmad then you will find new\nfriends from various countires and\nregions throughout the region',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 19, 94, 156),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
