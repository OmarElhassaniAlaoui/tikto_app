import 'package:flutter/cupertino.dart';
import 'package:flutter_mini_projet_omar/src/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../services/app_service.dart';

class MiddelWare extends GetMiddleware {
  @override
  int? get priority => 1;
  AppServices service = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (service.sharedPreferences.getString("step") == '2') {
      return const RouteSettings(name: AppPages.home);
    }

    if (service.sharedPreferences.getString("step") == '1') {
      return const RouteSettings(name: AppPages.searchTiktokUser);
    }

    return null;
  }
}
