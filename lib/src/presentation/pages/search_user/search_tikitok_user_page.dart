import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/search_form_controller.dart';
import 'widget/continue_button.dart';
import 'widget/search_form.dart';

class SearchTiktokUserPage extends GetView<SearchFormController> {
  const SearchTiktokUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchFormController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter your TikTok username',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            SearchForm(
              key: controller.formKey,
              usernameController: controller.usernameController,
              onSaved: (value) {
                print('username: $value');
              },
            ),
            const SizedBox(height: 20),
            ContinueButton(
              onPressed: () {
                controller.goToTemplate(); 
              },
            ),
          ],
        ),
      ),
    );
  }
}
