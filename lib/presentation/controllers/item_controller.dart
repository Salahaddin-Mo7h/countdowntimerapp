import 'package:get/get.dart';
import 'package:flutter_countdown_timer/index.dart';

class ItemController extends GetxController {
  final countdownTimers = <int, CountdownTimerController>{};

  RxDouble itemSize = 50.0.obs;
  @override
  void onClose() {
    for (var timer in countdownTimers.values) {
      timer.dispose();
    }
    super.onClose();
  }

  void initializeCountdown(int id, int endTime) {
    if (!countdownTimers.containsKey(id)) {
      countdownTimers[id] = CountdownTimerController(endTime: endTime);
    }
  }
}
