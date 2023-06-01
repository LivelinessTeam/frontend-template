import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:livelinesstemplate/app/constant/constants.dart';

import '../../../routes/app_pages.dart';
import '../../../widget/button_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(24.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button(
                  style: greenButtonStyle,
                  textData: "Profile",
                  onClick: () => Get.toNamed(Routes.PROFILE),
                )
              ],
            ),
          )),
    );
  }
}
