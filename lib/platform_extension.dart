import 'dart:io';

import 'package:flutter/material.dart';

extension PlatformExtension on BuildContext {
  
  bool get isDestkopPlatform =>
      Platform.isLinux || Platform.isMacOS || Platform.isWindows;

  bool get isMobilePlatform => Platform.isAndroid || Platform.isMacOS;
}
