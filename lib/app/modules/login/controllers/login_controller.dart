import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/data/repository/auth_repository.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final repository = Get.find<AuthRepository>();
  final formKey = GlobalKey<FormState>();
  final box = GetStorage('barberapp');

  Auth auth;

  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  RxBool showPassword = false.obs;
  RxBool loading = false.obs;

  void login() async {
    if (formKey.currentState.validate()) {
      loading.value = true;
      auth = await repository.login(usernameCtrl.text, passwordCtrl.text).then((auth) {
        //print(auth.toJson());
        if (auth != null) {
          box.write('auth', auth.toJson());
          Get.offAllNamed(Routes.HOME);
        }
        loading.value = false;
      }).catchError((err) {
        loading.value = false;
      });
    }
  }

  void toRegister() {
    Get.offAndToNamed(Routes.SIGNUP);
  }
}
