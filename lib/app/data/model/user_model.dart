class User {
  int id;
  String username;
  bool activated;

  User({this.id, this.username, this.activated});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    activated = json['activated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['activated'] = this.activated;
    return data;
  }
}
