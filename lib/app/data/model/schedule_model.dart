import 'package:barberapp/app/data/model/employee_model.dart';
import 'package:barberapp/app/data/model/service_model.dart';

class Schedule {
  int id;
  String schedulingDate;
  int usersId;
  int employeesId;
  int servicesId;
  Employee employee;
  Service service;

  Schedule(
      {this.id,
      this.schedulingDate,
      this.usersId,
      this.employeesId,
      this.servicesId,
      this.employee,
      this.service});

  Schedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    schedulingDate = json['scheduling_date'];
    usersId = json['users_id'];
    employeesId = json['employees_id'];
    servicesId = json['services_id'];
    employee = json['employee'] != null ? new Employee.fromJson(json['employee']) : null;
    service = json['service'] != null ? new Service.fromJson(json['service']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['scheduling_date'] = this.schedulingDate;
    data['users_id'] = this.usersId;
    data['employees_id'] = this.employeesId;
    data['services_id'] = this.servicesId;
    if (this.employee != null) {
      data['employee'] = this.employee.toJson();
    }
    if (this.service != null) {
      data['service'] = this.service.toJson();
    }
    return data;
  }
}
