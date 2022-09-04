import 'package:demo_projects/chose_app_screen/models/chose_app_model.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final ChoseAppModel choseAppModel;

  const AppCard({
    Key? key,
    required this.choseAppModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => choseAppModel.screen),
            );
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(8, 8, 10, 0),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: const AssetImage(
                  'assets/images/global/home_card_bg.jpg',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.8),
                  BlendMode.darken,
                ),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white10,
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Text(
                  choseAppModel.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 24,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Column(
                  children: const [
                    Text(
                      'Tap to continue to this app preview',
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white30,
                      size: 14,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
