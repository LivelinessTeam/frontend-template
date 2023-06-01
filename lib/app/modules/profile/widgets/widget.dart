import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../constant/constants.dart';
import '../../../widget/components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../../../data/models/users_model.dart';

activitiesWidget(context, UsersModel user, int index, classes) {
  if (classes[index] == null) {
    return const SizedBox();
  }
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          //
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: baseBlackColor,
          child: Padding(
            padding: EdgeInsets.only(
                left: 24.w, right: 24.w, top: 20.h, bottom: 20.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CachedNetworkImage(
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    Shimmer.fromColors(
                                  baseColor:
                                      const Color.fromARGB(255, 128, 128, 128),
                                  highlightColor:
                                      const Color.fromARGB(255, 169, 169, 169),
                                  enabled: true,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: lightBlackColor,
                                    ),
                                  ),
                                ),
                                width: 20.w,
                                height: 20.h,
                                imageUrl: user.mainPhoto!.imageUrl!,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: lightBlackColor,
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Builder(builder: (context) {
                                var title =
                                    "${user.name} in ${classes[index].location}";
                                if (title.length >= 35) {
                                  title = title.substring(0, 35) + "...";
                                }
                                return Text(
                                  title,
                                  style: tinyMediumTextStyle(color: whiteColor),
                                  overflow: TextOverflow.ellipsis,
                                );
                              })
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "${classes[index].title}",
                            style: regularTightBoldTextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "${DateFormat("EEEE, dd MMMM").format(DateTime.parse(classes[index].schedule!.datetime!))} - ${classes[index].schedule!.timeAvalibility!.getStartTextampm()}",
                            style: tinyMediumTextStyle(
                              color: lightestWhiteColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    activitesImage(classes[index].coverPhoto == null ||
                            classes[index].coverPhoto == ""
                        ? user.mainPhoto == null
                            ? null
                            : user.mainPhoto!.imageUrl!
                        : classes[index].coverPhoto!),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${classes[index].participantsList.length} Going",
                      style: tinyRegularTextStyle(
                        color: lightestWhiteColor2,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          icShare2,
                          color: lightestWhiteColor2,
                          width: 18.w,
                          height: 20.h,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      viewDivider(),
    ],
  );
}

Widget classesTab(coachClasses, theuser) {
  return Column(
    children: [
      coachClasses.isNotEmpty
          ? SizedBox(
              height: 320.h,
              child: ListView.builder(
                padding: EdgeInsetsDirectional.symmetric(vertical: 0.h),
                itemBuilder: (BuildContext context, int index) {
                  return activitiesWidget(
                      context, theuser, index, coachClasses);
                },
                itemCount: coachClasses.length >= 2 ? 2 : coachClasses.length,
              ),
            )
          : Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: const Text(
                  "No class available",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
      SizedBox(
        height: 30.h,
      ),
      coachClasses.length > 2
          ? seeAllButton(
              onTap: () {
                //
              },
            )
          : const SizedBox(),
      const SizedBox(
        height: 40,
      ),
    ],
  );
}

Widget circleFunctionButton({
  required VoidCallback onClick,
  required String icon,
}) {
  return SizedBox(
    width: 48.w,
    height: 48.h,
    child: ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(side: BorderSide.none),
        padding: const EdgeInsets.all(0),
        elevation: 5,
        backgroundColor: greenColor,
        shadowColor: Colors.transparent,
      ),
      child: SvgPicture.asset(
        icon,
        color: blackPrimaryColor,
        width: 24.w,
        height: 24.h,
      ),
    ),
  );
}

Widget shareButton(name, uid, userlink) {
  return GestureDetector(
    onTap: () {
      //
    },
    child: Container(
      height: 39.h,
      width: 39.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: greenColor)),
      child: SvgPicture.asset(
        icShare2,
        color: greenColor,
      ),
    ),
  );
}

Widget userInfo(userinfo, activitiescount, theuser, dataloaded) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        userinfo["name"],
        style: title5TextStyle(color: lightestWhiteColor),
      ),
      const SizedBox(
        height: 4,
      ),
      Row(
        children: [
          Text(
            userinfo["contacts"],
            style: smallSemiBoldTextStyle(
              color: lightestWhiteColor,
            ),
          ),
          Text(
            " contacts",
            style: smallRegularTextStyle(
              color: darkWhiteColor,
            ),
          ),
          Visibility(
              visible: dataloaded,
              child: Row(children: [
                const SizedBox(
                  width: 12,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: lightestWhiteColor,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  activitiescount != null ? activitiescount.toString() : "0",
                  style: smallSemiBoldTextStyle(
                    color: lightestWhiteColor,
                  ),
                ),
                Text(
                  " activities",
                  style: smallRegularTextStyle(
                    color: darkWhiteColor,
                  ),
                ),
              ]))
        ],
      ),
    ],
  );
}

Widget userAvatar(imageUrl) {
  if (imageUrl == "") {
    return CircleAvatar(
        backgroundColor: greySecondaryColor,
        backgroundImage: Image.asset(
          imgDummyPerson,
        ).image,
        foregroundImage: Image.asset(
          imgDummyPerson,
        ).image,
        radius: 28.w);
  }
  return profileAvatar2(borderColor: baseBlackColor, imageUrl: imageUrl);
}

Widget nav() {
  return Column(
    children: [
      SizedBox(
        height: 32.h,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: whiteColor,
                  size: 20.h,
                )),
          ],
        ),
      ),
      SizedBox(
        height: 16.h,
      ),
    ],
  );
}

Widget photosWidget(context, imageUrl) {
  if (imageUrl == null || imageUrl == "") {
    return const SizedBox();
  }
  return InkWell(
    onTap: () {
      //
    },
    child: CachedNetworkImage(
      fit: BoxFit.cover,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 128, 128, 128),
        highlightColor: const Color.fromARGB(255, 169, 169, 169),
        enabled: true,
        child: Container(
          decoration: const BoxDecoration(
            color: lightBlackColor,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.48,
      height: 240.h,
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: MediaQuery.of(context).size.width * 0.48,
        height: 240.h,
        decoration: BoxDecoration(
          color: lightBlackColor,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
    ),
  );
}
