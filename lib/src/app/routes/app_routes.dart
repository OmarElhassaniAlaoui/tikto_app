import 'package:flutter_mini_projet_omar/src/presentation/pages/template/template_page.dart';
import 'package:get/get.dart';

import '../../presentation/pages/folloers_list/followers_list_page.dart';
import '../../presentation/pages/following_list/following_list_page.dart';
import '../../presentation/pages/home/home.dart';
import '../../presentation/pages/search_user/search_tikitok_user_page.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/searchTiktokUserPage',
    page: () =>const SearchTiktokUserPage(),
  ),
  GetPage(name: '/home', page: () => Home()),
  GetPage(
    name: "/following-list",
    page: () => const FollwingListPage(),
  ),
  GetPage(
    name: "/followers-list",
    page: () => const FollwersListPage(),
  ),
  GetPage(
    name: "/template",
    page: () => const Template(),
  ),
];
