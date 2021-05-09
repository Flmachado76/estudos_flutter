import 'package:barberapp/app/data/model/schedule_model.dart';
import 'package:barberapp/app/data/provider/schedule_provider.dart';
import 'package:get/get.dart';

class ScheduleRepository {
  final ScheduleApiClient apiClient = Get.find<ScheduleApiClient>();

  getAll() async {
    List<Schedule> list = <Schedule>[];
    var response = await apiClient.getAll();
    if (response != null) {
      response.forEach((e) {
        list.add(Schedule.fromJson(e));
        //print(e.toJson());
      });
    }

    return list;
  }
}
