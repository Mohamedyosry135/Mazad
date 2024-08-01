import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static final light = ThemeData(
      scaffoldBackgroundColor: ColorCode.white,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(primary: ColorCode.green) //change the color of appBar
      //brightness: Brightness.light //compare the BG color with text color
      );
}
