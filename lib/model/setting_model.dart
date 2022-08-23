class SettingModel {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  SettingModel({this.status, this.code, this.message, this.data});

  SettingModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? idsetting;
  String? image;
  String? name;
  String? title;
  String? tagline;
  String? email;
  String? no;
  String? idrole;

  Data(
      {this.idsetting,
      this.image,
      this.name,
      this.title,
      this.tagline,
      this.email,
      this.no,
      this.idrole});

  Data.fromJson(Map<String, dynamic> json) {
    idsetting = json['idsetting'];
    image = json['image'];
    name = json['name'];
    title = json['title'];
    tagline = json['tagline'];
    email = json['email'];
    no = json['no'];
    idrole = json['idrole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idsetting'] = this.idsetting;
    data['image'] = this.image;
    data['name'] = this.name;
    data['title'] = this.title;
    data['tagline'] = this.tagline;
    data['email'] = this.email;
    data['no'] = this.no;
    data['idrole'] = this.idrole;
    return data;
  }
}
