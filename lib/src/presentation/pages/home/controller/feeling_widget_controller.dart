import 'package:flutter_mini_projet_omar/src/data/model/feeling_model.dart';
import 'package:get/get.dart';

class FeelingWidgetController extends GetxController {
  List<FeelingModel> feelings = [];

  void getFeeling() {
    feelings = FeelingModel.getFeeling(); 
  }

  @override
  void onInit() {
    getFeeling();
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
