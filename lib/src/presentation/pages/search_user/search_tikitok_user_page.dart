import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/template/template_page.dart';
import 'package:get/get.dart';

import 'controller/search_form_controller.dart';
import 'widget/continue_button.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GetBuilder<SearchFormController>(
                init: SearchFormController(),
                builder: (controller) {
                  return Form(
                    key: controller.formKey,
                    child: TextFormField(
                      controller: controller.usernameController,
                      onSaved: (value) {
                        print('username: ');
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username cannot be empty';
                        } else if (!value.startsWith('@')) {
                          return 'Username must start with @';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: '@Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ContinueButton(
              onPressed: () {
                if (controller.formKey.currentState!.validate()) {
                  controller.formKey.currentState!.save();
                  controller.username.value = controller.usernameController.text;
                  Get.to(() => const Template());
                }
                
              },
            ),
          ],
        ),
      ),
    );
  }
}





/*
SearchForm(
              key: controller.formKey,
              usernameController: controller.usernameController,
              onSaved: (value) {
                print('username: $value');
              },
            ),




 */