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

Future<bool> createTalent(
    idTalent,
    name,
    gender,
    age,
    workExperience,
    expectedSalary,
    statusTalent,
    latestWorkPeriode,
    locationWork,
    latestCompany,
    latestPosition,
    idUser) async {
  final response = await http.post(Uri.parse('$cmd/talent/save'),
      body: jsonEncode({
        "idTalent": idTalent,
        "name": name,
        "gender": gender,
        "age": age,
        "workExperience": workExperience,
        "expectedSalary": expectedSalary,
        "statusTalent": statusTalent,
        "latestWorkPeriode": latestWorkPeriode,
        "locationWork": locationWork,
        "latestCompany": latestCompany,
        "latestPosition": latestPosition,
        "idUser": idUser,
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
