import 'package:get/get.dart';

import 'package:barberapp/app/modules/home/bindings/home_binding.dart';
import 'package:barberapp/app/modules/home/views/home_view.dart';
import 'package:barberapp/app/modules/initial/views/Initial_view.dart';
import 'package:barberapp/app/modules/initial/bindings/initial_biding.dart';
import 'package:barberapp/app/modules/login/views/Login_view.dart';
import 'package:barberapp/app/modules/login/bindings/login_binding.dart';
import 'package:barberapp/app/modules/signup/bindings/signup_binding.dart';
import 'package:barberapp/app/modules/signup/views/signup_view.dart';
import 'package:barberapp/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:barberapp/app/modules/welcome/views/welcome_view.dart';
import 'package:barberapp/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
