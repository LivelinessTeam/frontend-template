import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:shimmer/shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/constants.dart';
import '../data/models/users_model.dart';
import '../routes/app_pages.dart';

smallBoldTextStyle2({color, fontweight}) {
  return TextStyle(
    color: color,
    fontWeight: fontweight ?? FontWeight.w700,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

smallBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w700,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

smallTextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

largeBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    fontFamily: "Urbanist",
  );
}

largeTightBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    fontFamily: "Urbanist",
  );
}

largeTightBoldTextStyleWith600({color}) {
  return TextStyle(
    color: color,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontFamily: "Urbanist",
  );
}

regularTightRegularTextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: "Urbanist",
  );
}

largeMediumTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    fontFamily: "Urbanist",
  );
}

title3TextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 26.sp,
    fontFamily: "Urbanist",
  );
}

regularRegularTextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 16.sp,
    fontFamily: "Urbanist",
  );
}

regularSemiBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    fontFamily: "Urbanist",
  );
}

regularSemiBoldTextStyleWith700({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    fontStyle: FontStyle.normal,
    fontFamily: "Urbanist",
  );
}

smallRegularTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

regularBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    fontFamily: "Urbanist",
  );
}

smallSemiBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

tinyRegularTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

smallMediumTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    fontFamily: "Urbanist",
  );
}

tinyMediumTextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Urbanist",
  );
}

tinySemiBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: "Urbanist",
  );
}

title4TextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 24.sp,
    fontWeight: FontWeight.w900,
    fontFamily: "Urbanist",
  );
}

whiteBackArrow() {
  return GestureDetector(
    onTap: () {
      Get.back();
    },
    child: Icon(
      Icons.arrow_back,
      color: lightestWhiteColor,
    ),
  );
}

line({width, color}) {
  return Container(
    width: width,
    height: 1,
    color: color,
  );
}

whiteBackArrowButton(context) {
  return GestureDetector(
    onTap: () {
      Get.back();
    },
    child: Container(
      width: 40.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(
        Icons.arrow_back,
        color: lightestWhiteColor,
        size: 20,
      ),
    ),
  );
}

whiteShareIconButton(ontap) {
  return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 40.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30.0),
          // shape: BoxShape.circle,
          // border: Border.all(color: outlineColor)
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            Icons.share,
            color: lightestWhiteColor,
            size: 20,
          ),
        ),
      ));
}

whiteShareIconButtonCircle(ontap) {
  return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 40.w,
        height: 30.h,
        decoration: BoxDecoration(
            color: Colors.black,
            // borderRadius: BorderRadius.circular(30.0),
            shape: BoxShape.circle,
            border: Border.all(color: outlineColor)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            Icons.share,
            color: lightestWhiteColor,
            size: 18,
          ),
        ),
      ));
}

regularTightBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
    fontFamily: "Urbanist",
  );
}

title5TextStyle({color}) {
  return TextStyle(
    color: color,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: "Urbanist",
  );
}

title5TextStyleWith700({color}) {
  return TextStyle(
    color: color,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: "Urbanist",
  );
}

largeSemiBoldTextStyle({color}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    fontFamily: "Urbanist",
  );
}

avatar(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: lightestWhiteColor,
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(
          imgDummyPerson,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}

avatarByUri(width, height, uri, onTap) {
  return ClipOval(
    child: InkWell(
      onTap: onTap,
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: Container(
            color: Colors.black,
          ),
        ),
        width: width,
        height: height,
        imageUrl: uri,
      ),
    ),
  );
}

avatarByUriActivityDetail(width, height, uri, text, onTap) {
  return InkWell(
    borderRadius: BorderRadius.circular(100),
    onTap: onTap,
    child: CachedNetworkImage(
      fit: BoxFit.cover,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 128, 128, 128),
        highlightColor: const Color.fromARGB(255, 169, 169, 169),
        enabled: true,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: lightBlackColor,
          ),
        ),
      ),
      width: width,
      height: height,
      imageUrl: uri,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: lightBlackColor,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
    ),
  );
}

avatarByUriActivityDetail2(width, height, uri, text, onTap) {
  return Column(
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          // borderRadius: BorderRadius.circular(100),
          width: width,
          height: height,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    uri,
                    // fit: BoxFit.cover,
                    // placeholder: (context, url) => Shimmer.fromColors(
                    //   baseColor: Colors.grey.shade300,
                    //   highlightColor: Colors.grey.shade100,
                    //   enabled: true,
                    //   child: Container(
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // width: width,
                    // height: height,
                    // imageUrl: uri,
                  ),
                  fit: BoxFit.cover)),
          // child: CachedNetworkImage(
          //   fit: BoxFit.cover,
          //   placeholder: (context, url) => Shimmer.fromColors(
          //     baseColor: Colors.grey.shade300,
          //     highlightColor: Colors.grey.shade100,
          //     enabled: true,
          //     child: Container(
          //       color: Colors.black,
          //     ),
          //   ),
          //   width: width,
          //   height: height,
          //   imageUrl: uri,
          // ),
        ),
      ),
    ],
  );
}

avatarByUriStandard(width, height, uri, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: width,
      height: height,
      // decoration: const BoxDecoration(shape: BoxShape.circle),
      // decoration: BoxDecoration(
      //   shape: BoxShape.circle,
      //   border: Border.all(
      //     color: whiteColor,
      //     width: 2.w,
      //   ),
      // ),
      child: Stack(children: [
        Positioned.fill(
          child: CircleAvatar(
            backgroundColor: greySecondaryColor,
            backgroundImage: Image.asset(
              imgDummyPerson,
            ).image,
            foregroundImage: CachedNetworkImageProvider(uri),
          ),
        )
      ]),
    ),
  );
}

avatarByUriBordered(width, height, uri, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      // decoration: const BoxDecoration(shape: BoxShape.circle),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: whiteColor,
          width: 2.w,
        ),
      ),
      child: Stack(children: [
        Positioned.fill(
          child: CircleAvatar(
            backgroundColor: greySecondaryColor,
            backgroundImage: Image.asset(
              imgDummyPerson,
            ).image,
            foregroundImage: CachedNetworkImageProvider(uri),
          ),
        )
      ]),
    ),
  );
}

messageIconButton(width, height, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: lightestWhiteColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text("Message",
            style: blackW400Text.copyWith(fontWeight: FontWeight.bold)),
      ),
    ),
  );
}

addIconButton(width, height, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: lightestWhiteColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 20,
        ),
      ),
    ),
  );
}

bookButton(width, height, text, onTap, isGreen) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: isGreen ? baseGreenColor : redDeleteColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          text,
          style: regularSemiBoldTextStyle(),
        ),
      ),
    ),
  );
}

followButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: baseGreenColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Follow",
        style: tinySemiBoldTextStyle(),
      ),
    ),
  );
}

connectButton2(width, height, text) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: baseGreenColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        text,
        style: regularSemiBoldTextStyle(),
      ),
    ),
  );
}

connectButton(width, height, text) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        baseGreenColor,
        gradientLightGreenColor,
      ]),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        text ?? "Connect",
        style: regularSemiBoldTextStyle(),
      ),
    ),
  );
}

messageButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        baseGreenColor,
        gradientLightGreenColor,
      ]),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Message",
        style: regularSemiBoldTextStyle(),
      ),
    ),
  );
}

calendarBorderButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      border: Border.all(
        color: baseGreenColor,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Calendar",
        style: regularSemiBoldTextStyle(
          color: baseGreenColor,
        ),
      ),
    ),
  );
}

progressBar({width, progress}) {
  return Container(
    width: width,
    height: 4,
    color: lightWhiteColor,
    child: Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: progress,
        height: 4,
        color: baseGreenColor,
      ),
    ),
  );
}

sportsTag({text}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: lightestWhiteColor,
        width: 1.5.w,
      ),
    ),
    padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
    child: Text(
      text,
      style: tinyMediumTextStyle(
        color: lightestWhiteColor,
      ),
    ),
  );
}

interestedTag({text}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: lightestWhiteColor,
        width: 1.5.w,
      ),
    ),
    padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
    child: Text(
      text,
      style: smallMediumTextStyle(
        color: lightestWhiteColor,
      ),
    ),
  );
}

toggleAll() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: lightestWhiteColor,
        width: 1,
      ),
    ),
    height: 37,
    width: 47,
    child: Center(
      child: Text(
        "All",
        style: regularRegularTextStyle(
          color: lightestWhiteColor,
        ),
      ),
    ),
  );
}

Widget _listOfMemberImage(List<String> participantPhotos) {
  Widget itemMember(url) {
    return Container(
      width: 32.w,
      height: 32.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: lightBlackColor,
          width: 2,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: greySecondaryColor,
        backgroundImage: Image.asset(
          imgDummyPerson,
        ).image,
        foregroundImage: url != ""
            ? CachedNetworkImageProvider(url)
            : Image.asset(
                imgDummyPerson,
              ).image,
      ),
    );
  }

  return Stack(
    alignment: AlignmentDirectional.centerStart,
    children: [
      itemMember((participantPhotos[0] != "") ? participantPhotos[0] : ""),
      if (participantPhotos.length > 1)
        Container(
          margin: EdgeInsets.only(left: 13.w),
          child: itemMember(
              (participantPhotos[1] != "") ? participantPhotos[1] : ""),
        ),
      if (participantPhotos.length > 2)
        Container(
          margin: EdgeInsets.only(left: 26.w),
          child: itemMember(
              (participantPhotos[2] != "") ? participantPhotos[2] : ""),
        ),
      if (participantPhotos.length > 3)
        Container(
          margin: EdgeInsets.only(left: 39.w),
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: lightBlackColor,
              width: 2,
            ),
            color: Colors.white,
          ),
          child: Center(
              child: Text(
            "+${participantPhotos.length - 3}",
          )),
        )
    ],
  );
}

calendarWidget(
    {date,
    time,
    title,
    location,
    classType,
    participantPhotos,
    participantsLimit,
    coverPhoto,
    isAvailable}) {
  return Container(
    width: 213.w,
    // height: 253.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: lightBlackColor,
    ),
    margin: EdgeInsets.only(
      right: 16.w,
    ),
    child: Column(
      children: [
        if (coverPhoto != "")
          CachedNetworkImage(
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              enabled: true,
              child: Container(
                width: 213.w,
                height: 120.h,
                color: Colors.black,
              ),
            ),
            imageUrl: coverPhoto,
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) => Container(
              width: 213.w,
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
                color: lightBlackColor,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
          ),
        if (coverPhoto == "")
          Container(
            width: 213.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
              image: DecorationImage(
                image: AssetImage(imgDummyPerson),
                fit: BoxFit.cover,
              ),
            ),
          ),
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: const BorderRadius.only(
        //       topRight: Radius.circular(10.0),
        //       topLeft: Radius.circular(10.0),
        //     ),
        //     color: lightBlackColor,
        //   ),
        //   width: 213.w,
        //   height: 120.h,
        //   child: CachedNetworkImage(
        //     placeholder: (context, url) => Shimmer.fromColors(
        //       baseColor: Colors.grey.shade300,
        //       highlightColor: Colors.grey.shade100,
        //       enabled: true,
        //       child: Container(
        //         color: Colors.black,
        //       ),
        //     ),
        //     imageUrl: coverPhoto,
        //     alignment: Alignment.topCenter,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 17.h,
              ),
              Row(
                children: [
                  Text(
                    date,
                    style: tinySemiBoldTextStyle(color: baseGreenColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: baseGreenColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    time,
                    style: tinySemiBoldTextStyle(color: baseGreenColor),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                title,
                style: regularSemiBoldTextStyle(color: lightestWhiteColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                location,
                style: tinyMediumTextStyle(color: lightestWhiteColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              if (classType == "group" && participantPhotos.isEmpty) ...{
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "$participantsLimit Spots left",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: greyW400Text,
                ),
                SizedBox(
                  height: 8.h,
                ),
              },
              if (classType == "private" && !isAvailable) ...{
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Booked",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: greyW400Text,
                ),
                SizedBox(
                  height: 8.h,
                ),
              },
              if (classType == "private" && isAvailable) ...{
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Available",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: greyW400Text,
                ),
                SizedBox(
                  height: 8.h,
                ),
              },
              if (classType == "group" && participantPhotos.isNotEmpty) ...{
                _listOfMemberImage(participantPhotos),
              },
              SizedBox(
                height: 8.h,
              ),
            ],
          ),
        )
      ],
    ),
  );
}

interestedTag2({text}) {
  return Container(
    margin: EdgeInsets.only(right: 12.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        color: Colors.transparent,
        border: Border.all(color: outlineColor)),
    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
    child: Text(
      text,
      style: tinySemiBoldTextStyle(
        color: lightestWhiteColor,
      ),
    ),
  );
}

greenInterestedTag({text}) {
  return Container(
    margin: EdgeInsets.only(right: 12.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(64),
      color: baseGreenColor,
    ),
    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
    child: Text(
      text,
      style: tinySemiBoldTextStyle(
        color: baseBlackColor,
      ),
    ),
  );
}

toggleAll2() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: lightestWhiteColor,
        width: 1,
      ),
    ),
    height: 37,
    width: 47,
    child: Center(
      child: Text(
        "All",
        style: regularRegularTextStyle(
          color: lightestWhiteColor,
        ),
      ),
    ),
  );
}

calendarWidget2(
    {image,
    date,
    time,
    title,
    location,
    classType,
    participantPhotos,
    participantsLimit,
    coverPhoto,
    isAvailable,
    multipleImages}) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 26),
    height: 253.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: lighterBlackColor,
    ),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 120.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  Text(
                    date,
                    style: tinySemiBoldTextStyle(color: baseGreenColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: baseGreenColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    time,
                    style: tinySemiBoldTextStyle(color: baseGreenColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: regularSemiBoldTextStyle(color: lightestWhiteColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                location,
                style: tinyMediumTextStyle(color: lightestWhiteColor),
              ),
              const SizedBox(
                height: 16,
              ),
              multipleImages == true
                  ? SizedBox(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: lightBlackColor,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(imgDummyPerson),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: lightBlackColor,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(imgDummyPerson),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: lightBlackColor,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(imgDummyPerson),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 54,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: lightBlackColor,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(imgDummyPerson),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 72,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: lightBlackColor,
                                  width: 2,
                                ),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  "4+",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: lightBlackColor,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage(imgDummyPerson),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
            ],
          ),
        )
      ],
    ),
  );
}

gotItButton(width, height) {
  return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: baseGreenColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            "I got it!",
            style: regularTightBoldTextStyle(
              color: baseBlackColor,
            ),
          ),
        ),
      ));
}

popUpButton(width, height, text) {
  return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: baseGreenColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            text,
            style: regularTightBoldTextStyle(
              color: baseBlackColor,
            ),
          ),
        ),
      ));
}

dateButton(date, onTap, borderColor, textColor) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 140.w,
      height: 35.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: baseBlackColor,
          border: Border.all(
            color: borderColor,
          )),
      child: Center(
        child: Text(
          date,
          style: regularRegularTextStyle(color: textColor),
        ),
      ),
    ),
  );
}

startTime(time, borderColor, textColor, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 91.w,
      height: 35.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: baseBlackColor,
          border: Border.all(
            color: borderColor,
          )),
      child: Center(
        child: Text(
          time,
          style: regularRegularTextStyle(color: textColor),
        ),
      ),
    ),
  );
}

endTime(time, borderColor, textColor, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 91.w,
      height: 35.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: baseBlackColor,
          border: Border.all(
            color: borderColor,
          )),
      child: Center(
        child: Text(
          time,
          style: regularRegularTextStyle(color: textColor),
        ),
      ),
    ),
  );
}

viewDivider() {
  return Container(
    decoration: BoxDecoration(
      color: lightestBlackColor,
    ),
    height: 1,
    width: double.infinity,
  );
}

plusButton({onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 28.h,
      width: 28.w,
      decoration: BoxDecoration(
        color: lightestBlackColor,
        shape: BoxShape.circle,
      ),
      child: Center(
          child: Icon(
        Icons.add,
        color: whiteColor,
        size: 24.w,
      )),
    ),
  );
}

minusButton({onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 28.h,
      width: 28.w,
      decoration: BoxDecoration(
        color: lightestBlackColor,
        shape: BoxShape.circle,
      ),
      child: Center(
          child: Icon(
        Icons.remove,
        color: whiteColor,
        size: 24.w,
      )),
    ),
  );
}

selectSportsButton(selectedSport, onTap) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: 210.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: baseBlackColor,
          border: Border.all(
            color: lightestBlackColor,
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedSport != "" ? selectedSport : "Select",
              style: regularRegularTextStyle(
                color: const Color(0xffA7A9AC),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: lightestWhiteColor,
              size: 20.w,
            )
          ],
        ),
      ));
}

selectLocationButton(location, onTap) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: 210.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: baseBlackColor,
          border: Border.all(
            color: lightestBlackColor,
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160.w,
              child: Text(
                location != "" ? location : "Select location",
                style: regularRegularTextStyle(
                  color: const Color(0xffA7A9AC),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: lightestWhiteColor,
              size: 20.w,
            )
          ],
        ),
      ));
}

locationButton({required TextEditingController controller}) {
  return SizedBox(
      height: 48.h,
      width: 210.w,
      child: TextFormField(
        controller: controller,
        cursorColor: greyPrimaryColor,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.sentences,
        style: regularRegularTextStyle(
          color: const Color(0xffA7A9AC),
        ),
        decoration: InputDecoration(
          hintText: "Location",
          hintStyle: regularRegularTextStyle(
            color: const Color(0xffA7A9AC),
          ),
          filled: true,
          fillColor: baseBlackColor,
          enabledBorder: OutlineInputBorder(
            // color: baseBlackColor,
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: lightestBlackColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: lightestBlackColor),
          ),
          contentPadding: EdgeInsets.all(10.w),
        ),
        // keyboardType: textInputType,
        // maxLength: 30,
      ));
}

shortDescriptionTextfield(
    {required TextEditingController controller, hintText}) {
  return SizedBox(
    height: 68.h,
    width: double.infinity,
    child: TextField(
      controller: controller,
      cursorColor: greyPrimaryColor,
      maxLines: 4,
      style: regularRegularTextStyle(
        color: const Color(0xffA7A9AC),
      ),
      //textInputAction: TextInputAction.newline,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.w),
        hintText: hintText,
        filled: true,
        fillColor: baseBlackColor,
        hintStyle: regularRegularTextStyle(
          color: const Color(0xffA7A9AC),
        ),
        enabledBorder: OutlineInputBorder(
          // color: baseBlackColor,
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: lightestBlackColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: lightestBlackColor),
        ),
      ),
      keyboardType: TextInputType.text,
    ),
  );
}

createButton(width, height, onloading, onTap) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: onloading ? paleGreenColor : baseGreenColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            onloading ? "Loading..." : "Create",
            style: regularTightBoldTextStyle(
              color: baseBlackColor,
            ),
          ),
        ),
      ));
}

createButton2(width, height, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: baseGreenColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          "Select",
          style: regularTightBoldTextStyle(
            color: baseBlackColor,
          ),
        ),
      ),
    ),
  );
}

createButton3(width, height, onTap, disabled) {
  if (disabled) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: paleGreenColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          "Select",
          style: regularTightBoldTextStyle(
            color: baseBlackColor,
          ),
        ),
      ),
    );
  }
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: baseGreenColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          "Select",
          style: regularTightBoldTextStyle(
            color: baseBlackColor,
          ),
        ),
      ),
    ),
  );
}

classesButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: baseGreenColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Classes",
        style: regularSemiBoldTextStyle(
          color: baseBlackColor,
        ),
      ),
    ),
  );
}

activitiesButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      border: Border.all(
        color: lightestBlackColor,
      ),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Activities",
        style: regularSemiBoldTextStyle(
          color: lightestWhiteColor,
        ),
      ),
    ),
  );
}

greenCategoriesButton({width, height, text}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: baseGreenColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        text,
        style: tinySemiBoldTextStyle(
          color: baseBlackColor,
        ),
      ),
    ),
  );
}

categoriesButton({width, height, text}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      border: Border.all(
        color: lightestBlackColor,
      ),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        text,
        style: tinySemiBoldTextStyle(
          color: lightestWhiteColor,
        ),
      ),
    ),
  );
}

tagWidget({text, height}) {
  return Container(
    // width: width,
    height: height,
    padding: EdgeInsets.symmetric(horizontal: 12.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: lightestWhiteColor,
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: smallBoldTextStyle(
          color: lightestWhiteColor,
        ),
      ),
    ),
  );
}

tagWidgetLight({text, height, width}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: lightestWhiteColor,
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: tinyMediumTextStyle(
          color: lightestWhiteColor,
        ),
      ),
    ),
  );
}

avatarBorder({borderColor}) {
  return Container(
    width: 48.w,
    height: 48.h,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: 2.w,
      ),
      image: DecorationImage(
        image: AssetImage(imgDummyPerson),
        fit: BoxFit.cover,
      ),
    ),
  );
}

joinButton({onTap, bool joined = false, bool full = false}) {
  return GestureDetector(
      onTap: () {
        if (!full) {
          onTap();
        }
      },
      child: Container(
        width: 88.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: lightestWhiteColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: full && joined == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Full",
                    style: regularSemiBoldTextStyle(color: darkerBlackColor),
                  )
                ],
              )
            : joined
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Joined",
                        style:
                            regularSemiBoldTextStyle(color: darkerBlackColor),
                      )
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        icZapBold,
                        color: blackPrimaryColor,
                        width: 20.w,
                        height: 20.h,
                      ),
                      Text(
                        "Join",
                        style:
                            regularSemiBoldTextStyle(color: darkerBlackColor),
                      )
                    ],
                  ),
      ));
}

Widget labelText({required String textData}) {
  return Container(
    margin: EdgeInsets.only(bottom: 16.h),
    child: Text(
      textData,
      style: blackW700Text.copyWith(fontSize: 16.sp),
    ),
  );
}

tagSelectedWidget({text, width, color, onTap}) {
  return Container(
      height: 33.h,
      margin: EdgeInsets.only(right: 14.w, bottom: 14.h),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          foregroundColor: color ?? Colors.transparent,
          backgroundColor: color ?? Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color:
                      color != null ? Colors.transparent : lightestWhiteColor),
              borderRadius: BorderRadius.circular(30.0)),
        ),
        child: Text(
          text,
          style: tinySemiBoldTextStyle(
            color: color != null ? baseBlackColor : lightestWhiteColor,
          ),
        ),
      ));
}

connectWhiteButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: lightestWhiteColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Connect",
        style: tinySemiBoldTextStyle(
          color: darkerBlackColor,
        ),
      ),
    ),
  );
}

connectedButton(width, height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: baseGreenColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Text(
        "Connected",
        style: tinySemiBoldTextStyle(),
      ),
    ),
  );
}

profileAvatar({borderColor}) {
  return Container(
    width: 85,
    height: 85,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: 4,
      ),
      image: const DecorationImage(
        image: AssetImage("assets/backgroundImage2.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

profileAvatar2({borderColor, imageUrl}) {
  return Container(
      width: 80.w,
      height: 80.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 4,
        ),
      ),
      child: CircleAvatar(
          backgroundColor: greySecondaryColor,
          backgroundImage: Image.asset(
            imgDummyPerson,
          ).image,
          foregroundImage: CachedNetworkImageProvider(imageUrl),
          radius: 80.w));
}

activitiesAvatar({borderColor}) {
  return Container(
    width: 65,
    height: 65,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: 4,
      ),
      image: const DecorationImage(
        image: AssetImage("assets/backgroundImage2.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

activitiesAvatar2({borderColor, required String url}) {
  return Container(
    width: 65,
    height: 65,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: 4,
      ),
      image: DecorationImage(
        image: CachedNetworkImageProvider(url),
        fit: BoxFit.cover,
      ),
    ),
  );
}

flag() {
  return Container(
    width: 24,
    height: 24,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage("assets/US.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

instaWidget() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: lightestBlackColor,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/instaIcon.png",
      scale: 4,
    ),
  );
}

twitterWidget() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: lightestBlackColor,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/twitterIcon.png",
      scale: 4,
    ),
  );
}

youtubeWidget() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: lightestBlackColor,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/youtubeIcon.png",
      scale: 4,
    ),
  );
}

linkIconWidget() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: lightestBlackColor,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/linkIcon.png",
      scale: 4,
    ),
  );
}

calendarIconWidget(calendarOn) {
  return Container(
    width: 50.w,
    height: 50.w,
    decoration: BoxDecoration(
      color: calendarOn ? lightestWhiteColor : lighterBlackColor,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/calendarIcon.png",
      color: calendarOn ? baseBlackColor : lightestWhiteColor,
      scale: 2,
    ),
  );
}

photosWidget(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.48,
    height: 240,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/athleteBackgroundImage.png",
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}

activitesImage(photo) {
  if (photo != "") {
    return CachedNetworkImage(
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Container(
          color: Colors.black,
        ),
      ),
      imageUrl: photo,
      alignment: Alignment.topCenter,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        width: 120.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: lightBlackColor,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
    );
  }

  return Container(
    width: 120.w,
    height: 90.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(
        image: AssetImage(imgDummyPerson),
        fit: BoxFit.cover,
      ),
    ),
  );
}

uploadIcon() {
  return Image.asset(
    "assets/upload.png",
    scale: 4,
  );
}

starIcon() {
  return Image.asset(
    "assets/star.png",
    scale: 4,
  );
}

seeAllButton({onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 75,
      height: 25,
      decoration: BoxDecoration(
        color: lighterBlackColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "See All ",
            style: tinySemiBoldTextStyle(
              color: darkWhiteColor,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 15,
            color: darkWhiteColor,
          )
        ],
      ),
    ),
  );
}

tryAgainButton(onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 77,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: lighterBlackColor,
      ),
      child: Center(
        child: Text(
          "Try Again",
          style: tinySemiBoldTextStyle(
            color: lightestWhiteColor,
          ),
        ),
      ),
    ),
  );
}

notificationConnectedWidget(context, name, location) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.only(bottom: 16),
    height: 50,
    child: Row(
      children: [
        avatar(48.0, 48.0),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: smallSemiBoldTextStyle(
                color: lightestWhiteColor,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              location,
              style: tinyRegularTextStyle(
                color: lightestWhiteColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        connectedButton(83.0, 30.0),
        const SizedBox(
          width: 12,
        ),
        deleteButton(),
      ],
    ),
  );
}

notificationConnectWidget(context, name, location) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.only(bottom: 16),
    height: 50,
    child: Row(
      children: [
        avatar(48.0, 48.0),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: smallSemiBoldTextStyle(
                color: lightestWhiteColor,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              location,
              style: tinyRegularTextStyle(
                color: lightestWhiteColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        connectWhiteButton(69.0, 30.0),
        const SizedBox(
          width: 12,
        ),
        deleteButton(),
      ],
    ),
  );
}

deleteButton() {
  return Container(
    width: 40,
    height: 32,
    decoration: BoxDecoration(
      color: lighterBlackColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Image.asset(
        "assets/deleteIcon.png",
        scale: 4,
      ),
    ),
  );
}

Widget connectButton3(user, isMe, userinfo) {
  return Column(
    children: [
      user.userType != "athlete" && isMe == false
          ? GestureDetector(
              onTap: () {
                //
              },
              child: connectButton2(276.w, 39.0.h, "Message"))
          : const SizedBox(),
      if (userinfo["userType"] == 'athlete' && !isMe!) ...{
        GestureDetector(
          onTap: () async {
            //
          },
          child: connectButton2(276.w, 39.0.h, "Message"),
        )
      }
    ],
  );
}
