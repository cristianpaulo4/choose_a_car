import 'package:choose_a_car/app/modules/base/widgets/bottom_bar.dart';
import 'package:choose_a_car/app/modules/home/views/home_view.dart';
import 'package:choose_a_car/util/color_app.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/base_controller.dart';

class BaseView extends GetView<BaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.background,
     
      body: PageView(
        children: [
          HomeView()
        ],
      ),

      bottomNavigationBar: BottomBar(),
      
    );
  }
}
