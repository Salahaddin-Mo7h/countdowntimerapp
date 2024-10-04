import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../controllers/item_controller.dart';

class ItemListView extends StatelessWidget {
  final ItemController controller = Get.put(ItemController());

  ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App with Timers & GIFs")),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          final countdownDuration = 60 * (index + 1); // Example logic
          final endTime =
              DateTime.now().millisecondsSinceEpoch + 1000 * countdownDuration;

          controller.initializeCountdown(index, endTime);

          return Obx(() => ListTile(
                leading: SizedBox(
                  width: controller.itemSize.value,
                  height: controller.itemSize.value,
                  child: Gif(
                    image: const AssetImage("assets/images/timer.gif"),
                    autostart: Autostart.loop,
    placeholder: (context) => const Text('Loading gif...'),
                  ),
                ),
                title: Text('Item ${index+1}'),
                subtitle: CountdownTimer(
                  controller: controller.countdownTimers[index],
                  endTime: endTime,
                  onEnd: () => print('Timer $index Ended'),
                ),
              ));
        },
      ),
    );
  }
}
