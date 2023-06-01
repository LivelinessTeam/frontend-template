import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/users_model.dart';
import '../../../constant/color.dart';
import './widget.dart';

class PhotosTabBarScreen extends StatefulWidget {
  UsersModel user;
  PhotosTabBarScreen({super.key, required this.user});

  @override
  State<PhotosTabBarScreen> createState() => _PhotosTabBarScreenState();
}

class _PhotosTabBarScreenState extends State<PhotosTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBlackColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.h, top: 0.h),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsetsDirectional.symmetric(vertical: 0.h),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                // crossAxisCount: 4,
                crossAxisSpacing: 12.0.w,
                childAspectRatio: 0.7,
                mainAxisSpacing: 12.0.h,
                maxCrossAxisExtent: 300,
              ),
              itemBuilder: (BuildContext context, int index) {
                // inspect(widget.user.userPhotos);
                if (widget.user.userPhotos![index] != null &&
                    widget.user.userPhotos![index].imageUrl != null &&
                    widget.user.userPhotos![index].imageUrl != "") {
                  return photosWidget(
                      context, widget.user.userPhotos![index].imageUrl);
                } else {
                  return const SizedBox();
                }
              },
              itemCount: widget.user.userPhotos!.length,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
