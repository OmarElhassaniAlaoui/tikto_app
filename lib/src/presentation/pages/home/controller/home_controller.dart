import 'package:flutter_mini_projet_omar/src/presentation/pages/home/models/account_state_model.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/models/feeling_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<FeelingModel> feelings = [];
  List <AccountStatModel> accountStatList = [];

  void getFeeling() {
    feelings = FeelingModel.getFeeling(); 
  }
  void getAccountStat() {
    accountStatList = AccountStatModel.getAccountStatus(); 
  }

  @override
  void onInit() {
    getFeeling();
    getAccountStat();
    super.onInit();
  }

  void changeFeeling([int? index]) {
    for (int i = 0; i < feelings.length; i++) {
      if (i == index) {
        feelings[i].isFeelingPressed = true.obs;
      } else {
        feelings[i].isFeelingPressed = false.obs;
      }
    }

    update();
  }
  
  
}
