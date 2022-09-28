import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:protalent_eksad/model/user_model.dart';

var cmd = 'https://dmsdev-api.eksad.com/gateway/pro/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<bool> signUp(username, email, password) async {
  final response = await http.post(Uri.parse('$cmd/register/save'),
      body: jsonEncode(
          {"fullname": username, "email": email, "password": password}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  // return response.statusCode;
}

Future<bool> signIn(username, password) async {
  final response = await http.post(Uri.parse('$cmd/user/signin'),
      body: jsonEncode({"username": username, "password": password}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  // return response.statusCode;
}

Future<bool> signOut(username) async {
  final response = await http.post(Uri.parse('$cmd/user/signout'),
      body: jsonEncode({"username": username}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  // return response.statusCode;
}

Future<bool> resetPassword(username, password, verifypass) async {
  final response = await http.put(Uri.parse('$cmd/user/resetPassword'),
      body: jsonEncode({
        "username": username,
        "password": password,
        "passwordBaru": verifypass
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  // return response.statusCode;
}

Future<List<dynamic>> getUser() async {
  var response = await http.get(Uri.parse('$qry/user/get'));
  var resultJson = jsonDecode(response.body)['data'];
  List<user> walist =
      await resultJson.map<user>((json) => user.fromJson(json)).toList();
  return walist;
}
