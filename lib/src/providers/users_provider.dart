import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:scaffold_providers_app/src/models/User.dart';

class UsersProvider {
  static Future<User> getUsers() async{
  const URL = 'https://randomuser.me/api/?results=100';
  final resp = await http.get(Uri.parse(URL));

  if(resp.statusCode == 200){
    return User.fromJson(json.decode(resp.body));
  }

  throw Exception('Failed to load Users');
}
}