import 'dart:convert';

import 'package:flutter_mini_projet_omar/src/app/core/services/api_service.dart';
import 'package:http/http.dart' as http;
class HttpServiceImpl extends ApiService {
 
 @override
  Future<Map<String, dynamic>> get(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse;
    } else {
      throw Exception('Failed to load data');
    }
  }
 
  
 
}
