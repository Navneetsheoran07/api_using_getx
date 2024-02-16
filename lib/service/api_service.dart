import 'dart:developer';

import 'package:http/http.dart' as http;


import '../model/user_model.dart';
import 'constant.dart';


class ApiService {
  Future<List<UserModel>> fetchUsersData() async {

      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
      else{
         throw Exception("network error");
      }

  }
}
