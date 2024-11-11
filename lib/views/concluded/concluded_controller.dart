import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class ConcludedController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  final customDuration = const Duration(seconds: 2);
  var isAnimationComplete = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    animationController = AnimationController(vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          isAnimationComplete.value = true;
        }
      });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void completeAnimation() {
    isAnimationComplete.value = true;
  }
}
