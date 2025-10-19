import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../routes/app_pages.dart';

class SumView extends StatefulWidget {
  const SumView({super.key});

  @override
  State<SumView> createState() => _SumViewState();
}

class _SumViewState extends State<SumView> {
  final box = GetStorage();
  RxInt total = 0.obs;

  @override
  void initState() {
    super.initState();
    calculateSum();

    // Reactive listeners
    box.listenKey('value1', (_) => calculateSum());
    box.listenKey('value2', (_) => calculateSum());
    box.listenKey('value3', (_) => calculateSum());
  }

  void calculateSum() {
    final v1 = box.read('value1') ?? 0;
    final v2 = box.read('value2') ?? 0;
    final v3 = box.read('value3') ?? 0;
    total.value = v1 + v2 + v3;
  }

  void restartProcess() {
    box.erase();
    Get.offAllNamed(Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sum Page')),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sum: ${total.value}',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text('Back to Edit'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: restartProcess,
                child: const Text('Start Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
