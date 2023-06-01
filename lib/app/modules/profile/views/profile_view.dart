import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/photos_tab_bar_screen.dart';
import '../widgets/bio_tab_bar.dart';
import '../widgets/widget.dart';

import '../../../constant/constants.dart';
import '../../../widget/components.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userinfo = controller.theuser.value.getInfo();

    return Scaffold(
        backgroundColor: baseBlackColor,
        body: Stack(
          children: [
            DefaultTabController(
              length: controller.tabController.length,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    nav(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        children: [
                          Obx(() => userAvatar(
                              controller.theuser.value.getAvatarPhoto())),
                          SizedBox(
                            width: 16.w,
                          ),
                          Obx(() => userInfo(
                              userinfo,
                              controller.activitiesCount.value,
                              controller.theuser.value,
                              controller.dataloaded.value)),
                        ],
                      ),
                    ),
                    Visibility(
                        visible: !controller.isMe.value,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 24.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.w),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    connectButton3(controller.theuser.value,
                                        controller.isMe.value, userinfo),
                                    shareButton(
                                        userinfo["name"],
                                        controller.theuser.value.uid,
                                        controller.theuser.value.link),
                                  ]),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 2.h,
                                    color: lightestBlackColor,
                                  ),
                                ),
                                SizedBox(
                                  width: controller.theuser.value.userType !=
                                          "athlete"
                                      ? MediaQuery.of(context).size.width / 1.7
                                      : MediaQuery.of(context).size.width / 2.3,
                                  child: controller.theuser.value.userType !=
                                          "athlete"
                                      ? TabBar(
                                          labelStyle: smallBoldTextStyle(),
                                          unselectedLabelStyle:
                                              smallBoldTextStyle2(
                                                  fontweight: FontWeight.w400),
                                          controller: controller.tabController,
                                          labelPadding:
                                              EdgeInsets.only(right: 16.w),
                                          padding: EdgeInsets.only(left: 24.w),
                                          indicatorPadding:
                                              EdgeInsets.only(right: 16.w),
                                          unselectedLabelColor: Colors.grey,
                                          indicatorColor: baseGreenColor,
                                          labelColor: lightestWhiteColor,
                                          indicatorWeight: 2.h,
                                          indicatorSize:
                                              TabBarIndicatorSize.tab,
                                          tabs: const [
                                            Tab(text: 'Classes'),
                                            Tab(text: 'Photos'),
                                            Tab(text: 'About'),
                                          ],
                                        )
                                      : Align(
                                          alignment: Alignment.centerLeft,
                                          child: TabBar(
                                            labelStyle: smallBoldTextStyle(),
                                            unselectedLabelStyle:
                                                smallBoldTextStyle2(
                                                    fontweight:
                                                        FontWeight.w400),
                                            controller:
                                                controller.tabController,
                                            unselectedLabelColor: Colors.grey,
                                            indicatorColor: baseGreenColor,
                                            labelColor: lightestWhiteColor,
                                            labelPadding:
                                                EdgeInsets.only(right: 16.w),
                                            padding:
                                                EdgeInsets.only(left: 24.w),
                                            indicatorPadding: EdgeInsets.only(
                                                right: 20.w, left: 4.w),
                                            indicatorWeight: 2.h,
                                            indicatorSize:
                                                TabBarIndicatorSize.tab,
                                            tabs: const [
                                              Tab(text: 'About'),
                                              Tab(text: 'Photos'),
                                            ],
                                          ),
                                          // ),
                                        ),
                                )
                              ],
                            ),
                          ),

                          controller.theuser.value.userType != "athlete"
                              ? Expanded(
                                  child: TabBarView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    controller: controller.tabController,
                                    children: [
                                      Obx(
                                        () => classesTab(
                                            controller.coachClasses.value,
                                            controller.theuser.value),
                                      ),
                                      PhotosTabBarScreen(
                                        user: controller.theuser.value,
                                      ),
                                      BioTabBarScreen(
                                          userinfo: userinfo,
                                          user: controller.theuser.value),
                                    ],
                                  ),
                                )
                              : Expanded(
                                  child: TabBarView(
                                    controller: controller.tabController,
                                    children: [
                                      BioTabBarScreen(
                                          userinfo: userinfo,
                                          user: controller.theuser.value),
                                      PhotosTabBarScreen(
                                        user: controller.theuser.value,
                                      ),
                                    ],
                                  ),
                                ),
                          //  )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Visibility(
                visible: controller.isMe.value,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 32.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        circleFunctionButton(
                          icon: icShare,
                          onClick: () {
                            //
                          },
                        ),
                        SizedBox(width: 40.w),
                        circleFunctionButton(
                          icon: icProfileEdit,
                          onClick: () {
                            //
                          },
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
