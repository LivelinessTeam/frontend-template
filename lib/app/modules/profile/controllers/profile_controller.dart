import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livelinesstemplate/app/data/models/users_model.dart';

import '../../../data/models/location_model.dart';
import '../../../data/models/photo_model.dart';

class ProfileController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  var theuser = UsersModel().obs;

  var likedByMe = false.obs;
  var isMe = false.obs;

  var coachClasses = [].obs;
  var activitiesCount = 0.obs;

  var loadingdata = true.obs;
  var dataloaded = false.obs;

  updateTabsLength(int length) {
    if (theuser.value.userType != "athlete") {
      tabController = TabController(length: 3, vsync: this);
    } else {
      tabController = TabController(length: length, vsync: this);
    }
  }

  @override
  void onInit() {
    super.onInit();

    theuser.value = UsersModel(
        uid: "uid",
        name: "Agung",
        nationality: "Argentina",
        nationalityCode: "AR",
        notificationDisabled: false,
        provider: "google",
        address: "Kabupaten Karimun",
        age: "24",
        avatarUrl:
            "https://firebasestorage.googleapis.com/v0/b/liveliness-fb4f5.appspot.com/o/uploads%2FZtEAB7AWl4edQ2ePq2utk8wEYIB2%2Fimage_picker6533004884650103738_compressed5240046362641887120.jpg?alt=media&token=3c0cfc4e-174b-4510-87bc-2125359f035c",
        bio: "Trying my best. Hehe 😋",
        birthDate: "15-12-1998",
        country: "Kabupaten Karimun",
        coverPhoto: Photo(
            imageUrl:
                "https://firebasestorage.googleapis.com/v0/b/liveliness-fb4f5.appspot.com/o/uploads%2FZtEAB7AWl4edQ2ePq2utk8wEYIB2%2Fimage_cropper_1679641338836_compressed6847422041892805604.jpg?alt=media&token=3dfd5bdc-325d-4ba6-b7c4-8aa050f5dad6",
            uploadedAt: "2023-03-24T14:02:27.262697"),
        creationTime: "2023-01-01T18:54:31.102904",
        email: "49un974@gmail.com",
        fcmToken:
            "fJr5x3MfR7-MaOGoRqcVP1:APA91bEkFTTloiFlcQbj-bKS0nCsYAoO5x8Kfl7FUdZggGAVxIwUYIDNt_VeIqnCY8b9gpk4lWsQ9_J2l42OpGGt28q2vbybdWdyrUMVHDhogq0cIMrCzQkzkRiA9sh6_1kaMNV8Qqo2",
        gender: "male",
        hidden: false,
        instagram: "tuahsakti",
        isEmailVerified: true,
        blockedUsers: [],
        chats: [],
        likedby: [],
        liking: [],
        isProfileVerified: false,
        lastSignInTime: "2023-01-01T18:54:31.102931",
        link: "https://liveliness.page.link/6Ghyhqk275c1HKR39",
        location: Location(
            latitude: 1.0039615,
            longitude: 103.4323562,
            lastUpdated: "2023-06-02T00:28:32.526278"),
        mainPhoto: Photo(
          imageUrl:
              "https://firebasestorage.googleapis.com/v0/b/liveliness-fb4f5.appspot.com/o/uploads%2FZtEAB7AWl4edQ2ePq2utk8wEYIB2%2Fimage_cropper_1685640577483_compressed2632552869283681451.jpg?alt=media&token=3273ca51-8859-4bfb-9a8a-3de103fb8a51",
          uploadedAt: "2023-06-02T00:29:44.526935",
        ),
        myRequests: [],
        requestsReceived: [],
        subscription: null,
        userInterest: ["Running", "Road Cycling"],
        userPhotos: [
          Photo(
            imageUrl:
                "https://firebasestorage.googleapis.com/v0/b/liveliness-fb4f5.appspot.com/o/uploads%2FZtEAB7AWl4edQ2ePq2utk8wEYIB2%2Fimage_cropper_1679140930464_compressed1056667616039967069.jpg?alt=media&token=ace786c2-3e3b-4eb5-b213-eee13186a0af",
            uploadedAt: "2023-03-24T14:02:42.725687",
          ),
          Photo(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/liveliness-fb4f5.appspot.com/o/uploads%2FZtEAB7AWl4edQ2ePq2utk8wEYIB2%2Fimage_cropper_1676162901809_compressed2675678796343172983.jpg?alt=media&token=54f5edbc-69d4-49cc-b8a9-768247b77930",
              uploadedAt: "2023-03-24T14:02:42.725778"),
          Photo(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/liveliness-fb4f5.appspot.com/o/uploads%2FZtEAB7AWl4edQ2ePq2utk8wEYIB2%2Fimage_cropper_1679310998532_compressed5582914499279583815.jpg?alt=media&token=cc36f64d-ea01-4e3a-9d51-e1d287657949",
              uploadedAt: "2023-03-24T14:02:42.725848")
        ],
        userType: "athlete");

    updateTabsLength(2);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    tabController.dispose();
  }
}
