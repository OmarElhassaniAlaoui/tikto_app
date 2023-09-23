import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FeelingWidget extends StatelessWidget {
  FeelingWidget({
    super.key,
    required this.index,
    this.feeling,
    this.feelingIcon,
    this.isFeelingPressed,
    this.onPressed,
  });
  final int index;
  final String? feeling;
  final String? feelingIcon;
  late RxBool? isFeelingPressed;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color: isFeelingPressed!.value ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: onPressed,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          feelingIcon!,
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
                  feeling!,
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
  }
}
