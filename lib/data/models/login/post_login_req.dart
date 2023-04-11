class PostLoginReq {
  String? username;
  String? password;

  PostLoginReq({this.username, this.password});

  PostLoginReq.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (username != null) {
      data['username'] = username;
    }
    if (password != null) {
      data['password'] = password;
    }
    return data;
  }
}
