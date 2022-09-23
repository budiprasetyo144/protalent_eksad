class user {
  String? idUser;
  String? email;
  String? idRole;
  String? username;
  String? password;
  String? status;

  user(
      {this.idUser,
      this.email,
      this.idRole,
      this.username,
      this.password,
      this.status});

  user.fromJson(Map<String, dynamic> json) {
    idUser = json['idUser'];
    email = json['email'];
    idRole = json['idRole'];
    username = json['username'];
    password = json['password'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idUser'] = this.idUser;
    data['email'] = this.email;
    data['idRole'] = this.idRole;
    data['username'] = this.username;
    data['password'] = this.password;
    data['status'] = this.status;
    return data;
  }
}
