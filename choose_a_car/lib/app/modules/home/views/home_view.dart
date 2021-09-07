import 'package:choose_a_car/app/modules/home/widgets/brands_sections.dart';
import 'package:choose_a_car/app/modules/home/widgets/custom_app_bar.dart';
import 'package:choose_a_car/util/number_contants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(paddingAll),
        child: ListView(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 30,
            ),
            BrandSection(),
          ],
        ),
      ),
    );
  }
}
