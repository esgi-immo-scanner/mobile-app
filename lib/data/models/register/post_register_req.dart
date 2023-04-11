class PostRegisterReq {
  String? username;
  String? password;
  String? email;
  String? name;
  int? role;

  PostRegisterReq(
      {this.username, this.password, this.email, this.name, this.role});

  PostRegisterReq.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    name = json['name'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (username != null) {
      data['username'] = username;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (role != null) {
      data['role'] = role;
    }
    return data;
  }
}
