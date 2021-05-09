class Employee {
  int id;
  String firstName;
  String lastName;
  int companiesId;
  int usersId;

  Employee({this.id, this.firstName, this.lastName, this.companiesId, this.usersId});

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    companiesId = json['companies_id'];
    usersId = json['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['companies_id'] = this.companiesId;
    data['users_id'] = this.usersId;
    return data;
  }
}
