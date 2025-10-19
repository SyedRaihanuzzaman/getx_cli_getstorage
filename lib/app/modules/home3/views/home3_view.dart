import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_cli_getstorage/app/routes/app_pages.dart';

import '../controllers/home3_controller.dart';

class Home3View extends GetView<Home3Controller> {
  final TextEditingController inputController = TextEditingController();
  Home3View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home3View'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputController,
                decoration: const InputDecoration(
                  labelText: 'Enter Third Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (inputController.text.isNotEmpty) {
                    controller.saveValue3(int.parse(inputController.text));
                    Get.toNamed(Routes.SUM);
                  }
                },
                child: const Text('Show Sum'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
