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
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(8, 8, 10, 0),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    image: AssetImage(choseAppModel.image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.7),
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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      choseAppModel.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 15,
                left: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 3,
                ),
              ),
              const Positioned(
                bottom: 10,
                child: Text(
                  'Tap to preview app',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                  ),
                ),
              ),
              const Positioned(
                right: 28,
                bottom: 12,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 8,
                ),
              ),
              const Positioned(
                right: 20,
                bottom: 10,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
