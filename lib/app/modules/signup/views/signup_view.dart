import 'package:barberapp/app/global/Components/already_have_an_account_acheck.dart';
import 'package:barberapp/app/global/Components/circular_progress.dart';
import 'package:barberapp/app/global/Components/rounded_button.dart';
import 'package:barberapp/app/global/Components/rounded_input_field.dart';
import 'package:barberapp/app/global/Components/rounded_password_field.dart';
import 'package:barberapp/app/modules/signup/controllers/signup_controller.dart';
import 'package:barberapp/app/modules/signup/views/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "REGISTRAR",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.03),
                SvgPicture.asset(
                  "assets/signup.svg",
                  height: Get.height * 0.35,
                ),
                RoundedInputField(
                  hintText: "Usuário",
                  controller: controller.usernameCtrl,
                  onChanged: (value) {},
                ),
                Obx(
                  () => RoundedPasswordField(
                    showPassword: controller.showPassword.value,
                    changeShowPassword: () {
                      controller.showPassword.value = !controller.showPassword.value;
                    },
                    controller: controller.passwordCtrl,
                    onChanged: (value) {},
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: !controller.loading.value,
                    child: RoundedButton(
                      text: "REGISTRAR",
                      press: () {
                        controller.register();
                      },
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: controller.loading.value,
                    child: CPI(),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    controller.toLogin();
                  },
                ),
                /*  OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocalIcon(
                      iconSrc: "assets/facebook.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/twitter.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/google-plus.svg",
                      press: () {},
                    ),
                  ],
                ) */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
