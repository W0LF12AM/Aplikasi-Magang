import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:utp_mopro/utp_quest/models/model_maroon.dart';

class repos {
  final _baseUrl = 'https://prak-labkom-mobpro.000webhostapp.com/api/maroons';

  Future getData() async {
    try {
      final Response = await http.get(Uri.parse(_baseUrl));
      if (Response.statusCode == 200) {
        print(Response.body);
        Iterable it = jsonDecode(Response.body);
        List<maroon> model = it.map((e) => maroon.fromJson(e)).toList();
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
