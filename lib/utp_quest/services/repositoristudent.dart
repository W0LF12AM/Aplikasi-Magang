import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:utp_mopro/utp_quest/models/model_student.dart';

class Repo {
  final _baseUrl = 'https://prak-labkom-mobpro.000webhostapp.com/api';

  Future getData() async {
    try {
      final Response = await http.get(Uri.parse(_baseUrl + '/students'));
      if (Response.statusCode == 200) {
        print(Response.body);
        Iterable it = jsonDecode(Response.body);
        List<model_student> model =
            it.map((e) => model_student.fromJson(e)).toList();
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future postData(String name, String npm) async {
    try {
      final Response = await http.post(Uri.parse(_baseUrl + '/students'),
          body: {'name': name, 'npm': npm});
      if (Response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
