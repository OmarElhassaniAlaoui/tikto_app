import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../template/template_page.dart';

class SearchFormController extends GetxController {
  late TextEditingController usernameController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final RxString username = "".obs;

  @override
  void onInit() {
    usernameController = TextEditingController();
    super.onInit();
  }

  void goToTemplate() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      username.value = usernameController.text;
      
      Get.to(() => const Template());
    }
  }

  GlobalKey<FormState> get formKey => _formKey;
  @override
  void onClose() {
    usernameController.dispose();
    super.onClose();
  }
}
