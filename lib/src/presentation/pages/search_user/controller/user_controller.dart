import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  final String apiUrl = 'https://tikio.app/json/x2b1/userInfo.json';
  final RxMap userData = {}.obs;
  final RxBool isLoading = false.obs;

  void fetchData() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        userData.value = json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
