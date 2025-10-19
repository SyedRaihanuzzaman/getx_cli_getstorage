import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_cli_getstorage/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final TextEditingController inputController = TextEditingController();

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputController,
                decoration: const InputDecoration(
                  labelText: "Enter First Number",
                ),
                keyboardType: TextInputType.number,
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (inputController.text.isNotEmpty) {
                    controller.saveValue1(int.parse(inputController.text));
                    Get.toNamed(Routes.HOME2);
                  }
                },
                child: Text("Go to Second Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
