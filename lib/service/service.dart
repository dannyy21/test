import 'dart:convert';

import 'package:testingflutter/models/UserModel.dart';
import 'package:http/http.dart';

class UserRepository {
  String endpoint = 'https://63a167d8a543280f775561e5.mockapi.io/flutter';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
