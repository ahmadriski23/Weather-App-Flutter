import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/colors.dart';

class CustomThemes {
  static final lightTheme = ThemeData(
    cardColor: Colors.white,
    fontFamily: "poppins",
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Vx.gray800,
    iconTheme: IconThemeData(
      color: Vx.gray600,
    ),
  );

  static final darkTheme = ThemeData(
    cardColor: bgColor.withOpacity(0.6),
    fontFamily: "poppins",
    scaffoldBackgroundColor: bgColor,
    primaryColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );
}
