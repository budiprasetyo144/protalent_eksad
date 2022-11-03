import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/pro/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<List<dynamic>> getPositionByActive() async {
  var response = await http.get(Uri.parse('$qry/position/getPositionByActive'));

  return jsonDecode(response.body)['data'];
}




