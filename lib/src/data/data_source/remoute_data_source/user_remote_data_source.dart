import 'dart:convert';

import 'package:flutter_mini_projet_omar/src/app/resources/constant_manager.dart';
import 'package:flutter_mini_projet_omar/src/data/model/user_info_model.dart';
import 'package:http/http.dart' as http;
abstract class UserRemoteDataSource {
  Future<User?> getUser();
}  

