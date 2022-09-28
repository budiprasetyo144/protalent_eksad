import 'dart:convert';

import 'package:http/http.dart' as http;


var cmd = 'https://dmsdev-api.eksad.com/gateway/pro/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/pro/v1/qry';

Future<bool> createSosmed (id,wa, ln, tw, ig, yt) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveSettingSosmed'),
      body: jsonEncode(
          {
            'idSettingSosmed': id,
            'whatsapp': wa,
            'linkedin': ln,
            'twitter': tw,
            'instagram': ig,
            'youtube': yt,
          }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<bool> updateSosmed (id,wa,linked,twitter,ig,yt) async {
  final response = await http
      .post(Uri.parse('$cmd/settingsosmed/updateSettingSosmed'),
      body: jsonEncode({
        'idSettingSosmed': id,
        'whatsapp': wa,
        'linkedin': linked,
        'twitter': twitter,
        'instagram': ig,
        'youtube': yt,
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}


Future<List<dynamic>> getSosmedDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getSettingSosmedByIdDesc'));
  return jsonDecode(response.body)['data'];
}