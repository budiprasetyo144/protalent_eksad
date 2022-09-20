import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/pro/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<List<dynamic>> getPage() async {
  var response = await http
      .get(Uri.parse('$qry/page/getAllPageByIdRole'));
  return jsonDecode(response.body)['data'];
}

Future<bool> createPage(name, page) async {
  final response = await http.post(
      Uri.parse('$cmd/page/savePage'),
      body: jsonEncode({"title": name, "page": page}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<bool> updatePage(id, name, page) async {
  final response = await http.post(
    Uri.parse('$cmd/page/savePage'),
    body: jsonEncode({"idPage": id, "title": name, "page": page}),
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

Future<bool> deletePage(id) async {
  final response = await http.post(
    Uri.parse('$cmd/page/updatePage'),
    body: jsonEncode({"idPage": id}),
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
