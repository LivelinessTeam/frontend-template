# Prequesitive 

Please install on your machine:
- https://pub.dev/packages/get_cli


# Create a new screen

To create a new screen use ```get create page:screen_name``` . 
Then, you can navigate to this screen by calling ```Get.toNamed(Routes.SCREEN_NAME)```


# Widget

`app/widget` is for global widget that reused in many screens, divide by categoy if possible (like `input.widgets.dart`).

For screen unique or specific widget please put it in their own directory, somethink like `app/modules/screen_name/widgets/widget.dart`.


# Sizing

Please check and use this package https://pub.dev/packages/flutter_screenutil.

Sizing example:
 - width :  24.w
 - height : 44.h
 - font size : 12.sp


# Note

From the example profile screen notice that the photos are using a skeleton/placeholder using https://pub.dev/packages/shimmer package, please use the same when possible.

Please use SVG for icon when possible.

