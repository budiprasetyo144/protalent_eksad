class MenuModel {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  MenuModel({this.status, this.code, this.message, this.data});

  MenuModel.fromJson(Map<String, dynamic> json) {
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
  int? idmenu;
  String? nameMenu;
  String? idrole;

  Data({this.idmenu, this.nameMenu, this.idrole});

  Data.fromJson(Map<String, dynamic> json) {
    idmenu = json['idmenu'];
    nameMenu = json['nameMenu'];
    idrole = json['idrole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idmenu'] = this.idmenu;
    data['nameMenu'] = this.nameMenu;
    data['idrole'] = this.idrole;
    return data;
  }
}
