import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/folloers_list/followers_list_page.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/home.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/search_user/search_tikitok_user_page.dart';
import 'package:get/get.dart';

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Template'),
          ElevatedButton(
              onPressed: () async {


              },
              child: const Text('get user info')),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const FollwersListPage());
            },
            child: const Text('Followers List'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const SearchTiktokUserPage());
            },
            child: const Text('Search Tiktok User'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Home());
            },
            child: const Text('Home'),
          ),
        ],
      )),
    );
  }
}
