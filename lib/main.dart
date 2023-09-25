import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/app/routes/app_routes.dart';
import 'package:flutter_mini_projet_omar/src/app/services/app_service.dart';
import 'package:get/get.dart';
import 'src/presentation/pages/search_user/search_tikitok_user_page.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SearchTiktokUserPage(), 
      initialRoute: '/searchTiktokUserPage',
      getPages: routes,
    );
  }
}
