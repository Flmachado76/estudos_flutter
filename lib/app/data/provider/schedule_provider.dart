import 'package:barberapp/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:barberapp/app/data/base_url.dart';

import '../model/auth_model.dart';

class ScheduleApiClient extends GetConnect {
  final box = GetStorage('barberapp');

  getAll() async {
    print(box.read('auth'));
    String token = Auth.fromJson(box.read('auth')).accessToken;
    var response = await get(
      baseUrl + "/schedules",
      headers: {"Authorization": 'Bearer ' + token},
    );
    print(response.body);
    if (response.hasError) {
      box.erase();
      Get.offAllNamed(Routes.WELCOME);
    }

    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
        title: "Error",
        content: Text("${response.body['error']}"),
      );
    }
  }
}
