import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SearchFormController extends GetxController {
  late TextEditingController usernameController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final RxString username = "".obs;

  @override
  void onInit() {
    usernameController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    super.onClose();
  }
}
