import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_cli_getstorage/app/routes/app_pages.dart';

import '../controllers/home2_controller.dart';

class Home2View extends GetView<Home2Controller> {
  final TextEditingController inputController = TextEditingController();
  Home2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home2View'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputController,
                decoration: const InputDecoration(
                  labelText: 'Enter Second Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (inputController.text.isNotEmpty) {
                    controller.saveValue2(int.parse(inputController.text));
                    Get.toNamed(Routes.HOME3);
                  }
                },
                child: Text("Go to Third Page"),
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
