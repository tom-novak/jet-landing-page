import 'package:flutter/material.dart';

import 'src/theme_data.dart' as data;

extension TealLightX on ThemeData {
  ThemeData get tealLight {
    return data.onePageLight(this);
  }

  ThemeData get tealDark {
    return data.onePageDark(this);
  }
}
