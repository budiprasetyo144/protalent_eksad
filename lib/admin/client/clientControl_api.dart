import 'dart:convert';

import 'package:http/http.dart' as http;

var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<List<dynamic>> getUserControl() async {
  var response = await http.get(Uri.parse('$qry/user/get'));

  return jsonDecode(response.body)['data'];
}
