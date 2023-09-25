import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/controller/home_controller.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/widgets/header_widget.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/home/widgets/say_hello_widget.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
              FeelingWidget(
                  homeController: homeController, controller: controller),
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
              AccountStatWidget(homeController: homeController),
            ],
          ),
        ],
      ),
    );
  }
}

class FeelingWidget extends StatelessWidget {
  const FeelingWidget({
    super.key,
    required this.homeController,
    required this.controller,
  });

  final HomeController homeController;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeController.feelings.length,
        itemBuilder: (context, index) {
          return SizedBox(
            child: Row(
              children: [
                Container(
                  height: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: homeController
                                  .feelings[index].isFeelingPressed!.value
                              ? Colors.green
                              : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            homeController.changeFeeling(index);
                            print(
                                "feeling pressed ${homeController.feelings[index].feeling}");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                controller.feelings[index].feelingIcon!,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${controller.feelings[index].feeling}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AccountStatWidget extends StatelessWidget {
  const AccountStatWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: GridView.builder(
        primary: false,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: homeController.accountStatList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(homeController.accountStatList[index].routeName);
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 50,
              decoration: BoxDecoration(
                color: homeController.accountStatList[index].color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeController.accountStatList[index].title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    homeController.accountStatList[index].value,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
