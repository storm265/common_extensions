import 'package:common_extensions/device_extension.dart';
import 'package:flutter/material.dart';

extension ThemeModeExtension on BuildContext {
  bool isDarkMode() =>
      MediaQuery.of(this).platformBrightness == Brightness.dark ? true : false;

  bool isLigthMode() =>
      MediaQuery.of(this).platformBrightness == Brightness.light ? true : false;
}

/// Example
class ThemeModeWidget extends StatefulWidget {
  const ThemeModeWidget({super.key});

  @override
  State<ThemeModeWidget> createState() => _ThemeModeWidgetState();
}

class _ThemeModeWidgetState extends State<ThemeModeWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint('is tablet ${context.isTabletDevice}');
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: context.isDarkMode() ? Colors.black : Colors.white,
      ),
    );
  }
}
