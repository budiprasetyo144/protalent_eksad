import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/pro/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<List<dynamic>> getContactList() async {
  var response = await http.get(Uri.parse('$qry/contact/get'));

  return jsonDecode(response.body)['data'];
}

Future<bool> deleteContact(id) async {
  final response = await http.post(
    Uri.parse('$cmd/contact/delete'),
    body: jsonEncode({"idContact": id}),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}


Future<bool> createPage(name, email, password) async {
  final response = await http.post(
      Uri.parse('$cmd/register/save'),
      body: jsonEncode({"fullname": name, "email": email,"password": password}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}


