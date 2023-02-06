import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:random_people_pr/model/api.dart';

String api = "https://randomuser.me/api/";

class ApiHelpers {
  ApiHelpers._();

  static final ApiHelpers apiHelpers = ApiHelpers._();

  Future<RendomData?> getData() async {
    http.Response data = await http.get(Uri.parse(api));

    if (data.statusCode == 200) {
      Map decodeData = jsonDecode(data.body);

      RendomData Data = RendomData.fromMap(data: decodeData);

      return Data;
    }
    return null;
  }
}
