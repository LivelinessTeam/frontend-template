import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/text_style.dart';
import '../../../constant/color.dart';
import '../../../data/models/users_model.dart';
import '../../../widget/components.dart';

class BioTabBarScreen extends StatefulWidget {
  dynamic userinfo;
  UsersModel user;
  BioTabBarScreen({super.key, this.userinfo, required this.user});

  @override
  State<BioTabBarScreen> createState() => _BioTabBarScreenState();
}

class _BioTabBarScreenState extends State<BioTabBarScreen> {
  // var components = Components();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBlackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Text(
                widget.userinfo["about"],
                style: regularRegularTextStyle(
                  color: lightestWhiteColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Location",
                style: regularSemiBoldTextStyle(
                  color: lightestWhiteColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/filledLocationIcon.png",
                    scale: 4,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${widget.userinfo["address"]}, ${widget.userinfo["distance"]}",
                    style: smallRegularTextStyle(
                      color: darkWhiteColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              if (widget.userinfo["nationality"].isNotEmpty) ...{
                Text(
                  "Nationality",
                  style: regularSemiBoldTextStyle(
                    color: lightestWhiteColor,
                  ),
                ),
                SizedBox(
                  height: 8.w,
                ),
                Row(
                  children: [
                    if (widget.userinfo["nationalityCode"].isNotEmpty) ...{
                      Container(
                        width: 24.h,
                        height: 24.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Flag.fromString(
                            widget.userinfo["nationalityCode"],
                            fit: BoxFit.fill,
                            replacement: Text(
                              '',
                              style: greyW400Text,
                            ),
                          ),
                        ),
                      ),
                    },
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      widget.userinfo["nationality"],
                      style: smallRegularTextStyle(
                        color: lightestWhiteColor,
                      ),
                    ),
                  ],
                )
              },
              const SizedBox(
                height: 20,
              ),
              Text(
                "I'm interested in",
                style: regularSemiBoldTextStyle(
                  color: lightestWhiteColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Wrap(
                  runSpacing: 8.0,
                  spacing: 8.0,
                  children: [
                    for (String interest in widget.user.userInterest!)
                      interestedTag(
                        text: interest.capitalizeFirst!,
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              widget.user.instagram != null
                  ? widget.user.instagram!.isNotEmpty
                      ? Column(
                          children: [
                            Text(
                              "Social",
                              style: regularSemiBoldTextStyle(
                                color: lightestWhiteColor,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            GestureDetector(
                                onTap: () {
                                  //
                                },
                                child: instaWidget())
                          ],
                        )
                      : Container()
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
