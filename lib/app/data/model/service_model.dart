class Service {
  int id;
  String name;
  int cost;
  int employeesId;

  Service({this.id, this.name, this.cost, this.employeesId});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cost = json['cost'];
    employeesId = json['employees_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['cost'] = this.cost;
    data['employees_id'] = this.employeesId;
    return data;
  }
}
