import 'package:flutter_mini_projet_omar/src/app/core/error/server_request.dart';
import 'package:flutter_mini_projet_omar/src/app/services/handling_data.dart';
import 'package:flutter_mini_projet_omar/src/data/data_source/remoute_data_source/user_remote_data_source.dart';
import 'package:get/get.dart';

class TemplateControllerImpl extends GetxController {
  final RxMap userData = {}.obs;
  final RxBool isLoading = false.obs;

  UserRemoteDataSource userRemoteDataSource =
      UserRemoteDataSource(apiService: Get.find()); 
  
  get statusRequest => null; 
  getUserData() async {
    userData.clear();
    var statusRequest = StatusRequest.loading;
    var data = await userRemoteDataSource.getUserInfo();
    print("==================== contorller $data");
    statusRequest = handlingData(data);
    if (statusRequest == StatusRequest.success) {
      userData.value = data;
      return userData;
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  
  @override
  void onInit() {
    getUserData();
    super.onInit();
  }
  







}

// // implementation
// class TemplateControllerImpl extends TemplateController {
//   UserRemoteDataSource userRemoteDataSource = UserRemoteDataSource(
//     apiService: Get.find(),
//   );
//   String? userInfo;
//   String? followers;
//   String? following;
//   String? vedioCount;
//   String? likesCount;

//   get statusRequest => null;

//   @override
//   getNickName() async {
//     // userInfo.clear();
//     var statusRequest = StatusRequest.loading;
//     var data = await userRemoteDataSource.getUserInfo();
//     print("==================== contorller $data");
//     statusRequest = handlingData(data);
//     if (statusRequest == StatusRequest.success) {
//       final Map<String, dynamic> mobileUserModule = data['MobileUserModule'];
//       final Map<String, dynamic> users = mobileUserModule['users'];
//       final Map<String, dynamic> userX2b1 = users['x2b1'];
//       final String nickname = userX2b1['nickname'];
//       userInfo = nickname;
//       return nickname;
//     } else {
//       statusRequest = StatusRequest.failure;
//     }
//     update();
//   }

//   // get Foller count
//   @override
//   getFollowers() async {
//     // userInfo.clear();
//     var statusRequest = StatusRequest.loading;
//     var data = await userRemoteDataSource.getUserInfo();
//     print("==================== contorller $data");
//     statusRequest = handlingData(data);
//     if (statusRequest == StatusRequest.success) {
//       final Map<String, dynamic> mobileUserModule = data['MobileUserModule'];
//       final Map<String, dynamic> stats = mobileUserModule['stats'];
//       final Map<String, dynamic> userStatsX2b1 = stats['x2b1'];
//       final int followerCount = userStatsX2b1['followerCount'];
//       followers = followerCount.toString();
//       return followerCount;
//     } else {
//       statusRequest = StatusRequest.failure;
//     }
//     update();
//   }

//   // get Following count
//   @override
//   getFollowing() async {
//     // userInfo.clear();
//     var statusRequest = StatusRequest.loading;
//     var data = await userRemoteDataSource.getUserInfo();
//     print("==================== contorller $data");
//     statusRequest = handlingData(data);
//     if (statusRequest == StatusRequest.success) {
//       final Map<String, dynamic> mobileUserModule = data['MobileUserModule'];
//       final Map<String, dynamic> stats = mobileUserModule['stats'];
//       final Map<String, dynamic> userStatsX2b1 = stats['x2b1'];
//       final int followingCount = userStatsX2b1['followingCount'];
//       following = followingCount.toString();
//       return followingCount;
//     } else {
//       statusRequest = StatusRequest.failure;
//     }
//     update();
//   }

//   // get vedio count
//   @override
//   getVedioCount() async {
//     // userInfo.clear();
//     var statusRequest = StatusRequest.loading;
//     var data = await userRemoteDataSource.getUserInfo();
//     print("==================== contorller $data");
//     statusRequest = handlingData(data);
//     if (statusRequest == StatusRequest.success) {
//       final Map<String, dynamic> mobileUserModule = data['MobileUserModule'];
//       final Map<String, dynamic> stats = mobileUserModule['stats'];
//       final Map<String, dynamic> userStatsX2b1 = stats['x2b1'];
//       final int videoCount = userStatsX2b1['videoCount'];
//       vedioCount = videoCount.toString();
//       return videoCount;
//     } else {
//       statusRequest = StatusRequest.failure;
//     }
//     update();
//   }

//   // get likes count
//   getLikesCount() async {
//     // userInfo.clear();
//     var statusRequest = StatusRequest.loading;
//     var data = await userRemoteDataSource.getUserInfo();
//     print("==================== contorller $data");
//     statusRequest = handlingData(data);
//     if (statusRequest == StatusRequest.success) {
//     } else {
//       statusRequest = StatusRequest.failure;
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     getNickName();
//     super.onInit();
//   }
// }
