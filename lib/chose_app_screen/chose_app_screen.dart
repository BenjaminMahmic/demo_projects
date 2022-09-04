import 'package:demo_projects/chose_app_screen/models/chose_app_model.dart';
import 'package:flutter/material.dart';

import '../social_media_1/welcome_screen/welcome_screen.dart';
import 'components/app_card.dart';

class ChoseAppScreen extends StatefulWidget {
  const ChoseAppScreen({Key? key}) : super(key: key);

  @override
  State<ChoseAppScreen> createState() => _ChoseAppScreenState();
}

class _ChoseAppScreenState extends State<ChoseAppScreen> {
  final List<ChoseAppModel> _apps = [
    ChoseAppModel(
      screen: const App1MainScreen(),
      title: 'Social media app 1',
    ),
    ChoseAppModel(
      screen: const App1MainScreen(),
      title: 'Chat app',
    ),
    ChoseAppModel(
      screen: const App1MainScreen(),
      title: 'Instagram redesign',
    ),
    ChoseAppModel(
      screen: const App1MainScreen(),
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
          child: ListView.builder(
            itemCount: _apps.length,
            itemBuilder: ((context, index) {
              final app = _apps[index];
              return AppCard(choseAppModel: app);
            }),
          ),
        ),
      ),
    );
  }
}
