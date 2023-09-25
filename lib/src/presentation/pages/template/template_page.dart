import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/app/core/error/server_request.dart';
import 'package:flutter_mini_projet_omar/src/app/core/services/api_service.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/search_user/controller/user_controller.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/template/controller/template_controller.dart';
import 'package:get/get.dart';

class TemplatePage extends GetView<TemplateControllerImpl> {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ApiService());
    final userController = Get.put(TemplateControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                userController.getUserData();
                // userController.getFollowers();
              },
              child: const Text('Fetch Data'),
            ),
            const SizedBox(height: 20),
            GetBuilder(
              init: userController,
              builder: (userController) {
                if (userController.statusRequest == StatusRequest.loading) {
                  return const CircularProgressIndicator();
                } else if (userController.statusRequest ==
                    StatusRequest.failure) {
                  return const Text('Failed to fetch data.');
                } else {
                  return _buildUserData();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserData() {
    final data = Get.find<TemplateControllerImpl>().userData;

    // Display the fetched data here. You can customize this part as needed.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ID: ${data['MobileUserModule']['users']['x2b1']['id']}'),
        Text('ID: ${data['MobileUserModule']['users']['x2b1']['uniqueId']}'),
        Text('ID: ${data['MobileUserModule']['users']['x2b1']['nickname']}'),
        Text('ID: ${data['MobileUserModule']['users']['x2b1']['followerCount'] ?? '0'}'),
        SizedBox(
          height: 100,
          width: 100,
          child: Image.network(
              '${data['MobileUserModule']['users']['x2b1']['avatarLarger']}'),
        ),

        // Text('ID: ${data['MobileUserModule']['users']['x2b1']['avatarLarger']}'),
        // Text('ID: ${following}'),
        // Text('ID: ${vedioCount}'),

        // Add more fields as needed
      ],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_mini_projet_omar/src/app/resources/constant_manager.dart';
// import 'package:flutter_mini_projet_omar/src/app/services/http_service_impl.dart';
// import 'package:flutter_mini_projet_omar/src/presentation/pages/folloers_list/followers_list_page.dart';
// import 'package:flutter_mini_projet_omar/src/presentation/pages/home/home.dart';
// import 'package:flutter_mini_projet_omar/src/presentation/pages/search_user/search_tikitok_user_page.dart';
// import 'package:get/get.dart';

// class Template extends StatelessWidget {
//    Template({super.key});
//   final HttpServiceImpl httpService = Get.find<HttpServiceImpl>();


//   void _fetchData()async {
//     try {
//       final data = await httpService.get(ConstantManager.userInfoUrl);
//     } catch (e) {
//       print(e);
//     }
//   }
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text('Template'),
//           ElevatedButton(
//               onPressed: () async {
//                 // do :show dialog to get user info
//                  _fetchData();


                


//               },
//               child: const Text('get user info')),
//           ElevatedButton(
//             onPressed: () {
//               Get.to(() => const FollwersListPage());
//             },
//             child: const Text('Followers List'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Get.to(() => const SearchTiktokUserPage());
//             },
//             child: const Text('Search Tiktok User'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Get.to(() => const Home());
//             },
//             child: const Text('Home'),
//           ),
//         ],
//       )),
//     );
//   }
// }
