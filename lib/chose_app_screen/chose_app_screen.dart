import 'package:demo_projects/chose_app_screen/models/chose_app_model.dart';
import 'package:flutter/material.dart';

import '../social_media_1/social_media_1_main.dart';
import 'components/app_card.dart';

class ChoseAppScreen extends StatefulWidget {
  const ChoseAppScreen({Key? key}) : super(key: key);

  @override
  State<ChoseAppScreen> createState() => _ChoseAppScreenState();
}

class _ChoseAppScreenState extends State<ChoseAppScreen> {
  int _currentPage = 0;

  final _pageController = PageController(
    viewportFraction: .75,
    initialPage: 0,
  );
  final List<ChoseAppModel> _apps = [
    ChoseAppModel(
      screen: const SocialMedia1Main(),
      title: 'Social media app 1',
    ),
    ChoseAppModel(
      screen: const SocialMedia1Main(),
      title: 'Chat app',
    ),
    ChoseAppModel(
      screen: const SocialMedia1Main(),
      title: 'Instagram redesign',
    ),
    ChoseAppModel(
      screen: const SocialMedia1Main(),
      title: 'Viber redesign',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(45, 63, 81, 1),
                Color.fromRGBO(188, 194, 198, 1),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _apps.length,
                  onPageChanged: (i) {
                    setState(() => _currentPage = i);
                  },
                  itemBuilder: (context, i) {
                    return AnimatedContainer(
                      height: double.infinity,
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(
                        horizontal: _currentPage == i ? 0 : 15,
                        vertical: _currentPage == i ? 20 : 60,
                      ),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: _currentPage == i ? 1 : .6,
                        child: AppCard(
                          choseAppModel: _apps[i],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
