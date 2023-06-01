import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../constant/constants.dart';

Widget buttonWithIconPluss(
    {required String textData,
    required VoidCallback onClick,
    required bool isLoading,
    required bool isEnabled}) {
  return SizedBox(
    height: 55.h,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: isEnabled ? onClick : () {},
      style: isEnabled ? greenButtonStyle : paleGreenButtonStyle,
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 6.h, 12.w, 6.h),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Loading...",
                    style: blackW700Text,
                  ),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: paleGreenColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 30.0,
                            width: 30.0,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textData,
                    style: blackW700Text,
                  ),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: isEnabled ? greenColor : paleGreenColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgPicture.asset(
                      icRoundArrowRight,
                      fit: BoxFit.none,
                      width: 20.w,
                      height: 20.h,
                    ),
                  )
                ],
              ),
      ),
    ),
  );
}

Widget buttonWithIconPlus(
    {required ButtonStyle style,
    required String textData,
    required VoidCallback onClick,
    required bool isLoading}) {
  return SizedBox(
    height: 55.h,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onClick,
      style: style,
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 6.h, 12.w, 6.h),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Loading...",
                    style: blackW700Text,
                  ),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: paleGreenColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 30.0,
                            width: 30.0,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textData,
                    style: blackW700Text,
                  ),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgPicture.asset(
                      icRoundArrowRight,
                      fit: BoxFit.none,
                      width: 20.w,
                      height: 20.h,
                    ),
                  )
                ],
              ),
      ),
    ),
  );
}

Widget buttonWithIcon({
  required ButtonStyle style,
  required String textData,
  required VoidCallback onClick,
}) {
  return SizedBox(
    height: 55.h,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onClick,
      style: style,
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 6.h, 12.w, 6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textData,
              style: blackW700Text,
            ),
            Container(
              width: 42.w,
              height: 42.h,
              decoration: BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: SvgPicture.asset(
                icRoundArrowRight,
                fit: BoxFit.none,
                width: 20.w,
                height: 20.h,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget buttonPlus({
  required ButtonStyle style,
  required String textData,
  required VoidCallback onClick,
  required bool isLoading,
}) {
  return isLoading
      ? SizedBox(
          height: 55.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onClick,
            style: style,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      : SizedBox(
          height: 55.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onClick,
            style: style,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                textData,
                style: blackW700Text,
              ),
            ),
          ),
        );
}

Widget buttonPluss2(
    {required ButtonStyle style,
    required String textData,
    required VoidCallback onClick,
    required bool isLoading,
    required bool isEnabled,
    required bool isSelected}) {
  return isLoading
      ? SizedBox(
          height: 55.h,
          child: ElevatedButton(
            onPressed: isEnabled ? onClick : () {},
            style: isEnabled
                ? isSelected
                    ? greenButtonStyle
                    : style
                : paleGreenButtonStyle,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      : SizedBox(
          height: 55.h,
          child: ElevatedButton(
            onPressed: isEnabled ? onClick : () {},
            style: isEnabled
                ? isSelected
                    ? greenButtonStyle
                    : style
                : paleGreenButtonStyle,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                textData,
                style: blackW700Text,
              ),
            ),
          ),
        );
}

Widget buttonPluss({
  required ButtonStyle style,
  required String textData,
  required VoidCallback onClick,
  required bool isLoading,
  required bool isEnabled,
}) {
  return isLoading
      ? SizedBox(
          height: 55.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: isEnabled ? onClick : () {},
            style: isEnabled ? style : paleGreenButtonStyle,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      : SizedBox(
          height: 55.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: isEnabled ? onClick : () {},
            style: isEnabled ? style : paleGreenButtonStyle,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                textData,
                style: blackW700Text,
              ),
            ),
          ),
        );
}

Widget buttonClassInfo({
  required ButtonStyle style,
  required String textData,
  required VoidCallback onClick,
  required bool isLoading,
  required bool isEnabled,
}) {
  return isLoading
      ? ElevatedButton(
          onPressed: isEnabled ? onClick : () {},
          style: style,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                )
              ],
            ),
          ),
        )
      : ElevatedButton(
          onPressed: isEnabled ? onClick : () {},
          style: style,
          child: Text(
            textData,
            style: isEnabled
                ? blackW700Text
                : whiteW700Text.copyWith(fontSize: 16.sp),
          ),
        );
}

Widget button({
  required ButtonStyle style,
  required String textData,
  required VoidCallback onClick,
}) {
  return SizedBox(
    height: 55.h,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onClick,
      style: style,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Text(
          textData,
          style: blackW700Text,
        ),
      ),
    ),
  );
}

Widget buttonCloseBottomSheet() {
  return Align(
    alignment: Alignment.centerRight,
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(0),
            elevation: 0),
        child: SvgPicture.asset(
          icClose,
          width: 24.w,
          height: 24.h,
          fit: BoxFit.none,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    ),
  );
}

Widget outlineButton({
  required String textData,
  required VoidCallback onClick,
  required Color color,
}) {
  return SizedBox(
    height: 55.h,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color, width: 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
      onPressed: onClick,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 16.h),
        child: Text(
          textData,
          style: blackW700Text.copyWith(color: color),
        ),
      ),
    ),
  );
}

Widget iconButtonClose({
  required BuildContext context,
  Color color = whiteColor,
}) {
  return Container(
    margin: EdgeInsets.only(top: 21.h, right: 16.w),
    // color: yellowPrimaryColor,
    width: 32.w,
    height: 32.h,
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      child: SvgPicture.asset(
        icClose,
        color: color,
      ),
    ),
  );
}
