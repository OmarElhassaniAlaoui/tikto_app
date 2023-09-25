import 'package:flutter_mini_projet_omar/src/app/core/services/api_service.dart';

class UserRemoteDataSource {
  ApiService apiService;
  UserRemoteDataSource({required this.apiService});
  getUserInfo() async {
    var data = await apiService
        .getData('https://tikio.app/json/x2b1/userInfo.json', {});
    return data.fold((l) => l, (r) => r); 
  }
}
