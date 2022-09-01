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
            padding: const EdgeInsets.symmetric(horizontal: 80),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: const AssetImage(
                  'assets/images/global/home_card_bg.jpg',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.6),
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
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  choseAppModel.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white70,
                    fontSize: 45,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Column(
            children: const [
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              SizedBox(height: 15),
              Text(
                'Tap to continue to this app preview',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
