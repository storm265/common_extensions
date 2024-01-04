import 'package:flutter/widgets.dart';

extension DeviceExtension on BuildContext {
  bool get isLandscapeOrientation =>
      MediaQuery.of(this).orientation == Orientation.landscape ? true : false;

  bool get isPortraitOrientation =>
      MediaQuery.of(this).orientation == Orientation.portrait ? true : false;

  bool get isTablet => MediaQuery.of(this).size.shortestSide >= 600;
}
