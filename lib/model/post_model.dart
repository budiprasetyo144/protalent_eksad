class PostModel {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  PostModel({this.status, this.code, this.message, this.data});

  PostModel.fromJson(Map<String, dynamic> json) {
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
  int? idpost;
  String? title;
  String? post;
  String? status;
  String? idrole;

  Data({this.idpost, this.title, this.post, this.status, this.idrole});

  Data.fromJson(Map<String, dynamic> json) {
    idpost = json['idpost'];
    title = json['title'];
    post = json['post'];
    status = json['status'];
    idrole = json['idrole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idpost'] = this.idpost;
    data['title'] = this.title;
    data['post'] = this.post;
    data['status'] = this.status;
    data['idrole'] = this.idrole;
    return data;
  }
}
