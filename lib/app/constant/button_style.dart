import 'package:flutter/material.dart';
import './color.dart';

ButtonStyle greenButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: greenColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
  elevation: 0,
  shadowColor: Colors.transparent,
);

ButtonStyle redButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: redLightColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
  elevation: 0,
  shadowColor: Colors.transparent,
);

ButtonStyle paleRedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: paleRedLightColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
  elevation: 0,
  shadowColor: Colors.transparent,
);

ButtonStyle paleGreenButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: paleGreenColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
  elevation: 0,
  shadowColor: Colors.transparent,
);

ButtonStyle blackPrimaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: blackPrimaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
  elevation: 0,
  shadowColor: Colors.transparent,
);

ButtonStyle yellowButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: yellowPrimaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);

ButtonStyle greenCircleButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: greenColor,
    shape: const CircleBorder(side: BorderSide.none),
    padding: const EdgeInsets.all(8));

ButtonStyle whiteButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xffF7F7F8),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
ButtonStyle whiteCircleButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: whiteColor,
  shape: const CircleBorder(side: BorderSide.none),
  padding: const EdgeInsets.all(8),
  elevation: 0,
  shadowColor: Colors.transparent,
);
