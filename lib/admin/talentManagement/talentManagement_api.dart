import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/pro/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<List<dynamic>> getTalentList() async {
  var response = await http.get(Uri.parse('$qry/talent/getTalentByActive'));

  return jsonDecode(response.body)['data'];
}

Future<bool> deleteTalent(id) async {
  final response = await http.post(
    Uri.parse('$cmd/talent/delete'),
    body: jsonEncode({"idTalent": id}),
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


Future<bool> createTalent(name, email, password) async {
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


