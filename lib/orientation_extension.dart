import 'package:flutter/widgets.dart';

extension OrientationExtension on BuildContext {
  bool isLandscapeOrientation() =>
      MediaQuery.of(this).orientation == Orientation.landscape ? true : false;

  bool isPortraitOrientation() =>
      MediaQuery.of(this).orientation == Orientation.portrait ? true : false;
}
