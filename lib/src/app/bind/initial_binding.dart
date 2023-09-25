import 'package:flutter_mini_projet_omar/src/app/core/services/api_service.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService()); 
  }
}