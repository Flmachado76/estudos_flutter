import 'package:barberapp/app/modules/initial/controllers/initial_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialView extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 5,
            gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF212121),
                Color(0xff93291E),
              ],
            ),
            navigateAfterSeconds: controller.verifyAuth(),
            loaderColor: Colors.transparent,
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
