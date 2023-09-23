import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/controller/feeling_widget_controller.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/widgets/header_widget.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/widgets/say_hello_widget.dart';
import 'package:get/get.dart';

import 'widgets/feeling_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final FeelingWidgetController feelingWidgetController =
      Get.put(FeelingWidgetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const HeaderWidget(),
              const SizedBox(
                height: 40,
              ),
              const SayHelloWidget(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Text(
                  'How are you feeling today?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: feelingWidgetController.feelings.length,
                  itemBuilder: (context, index) {
                    return Obx(() => FeelingWidget(
                        index: index,
                        feeling:
                            feelingWidgetController.feelings[index].feeling,
                        feelingIcon:
                            feelingWidgetController.feelings[index].feelingIcon,
                        isFeelingPressed: feelingWidgetController
                            .feelings[index].isFeelingPressed.obs.value,
                        onPressed: () {
                          feelingWidgetController.changeFeeling(index);
                          print(
                              "feeling pressed ${feelingWidgetController.feelings[index].feeling}");
                        }));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Your account state",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
