import 'package:flutter/widgets.dart';

class SizeConfig {
  static final SizeConfig _singleton = SizeConfig._internal();

  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;

  late double _safeAreaHorizontal;
  late double _safeAreaVertical;
  late double safeBlockHorizontal;
  late double safeBlockVertical;
  late double textScaleFactor;
  late MediaQueryData customTextScaleFactor;

  late double referenceScreenWidth = 375;
  late double referenceScreenHeight = 812;

  factory SizeConfig() {
    return _singleton;
  }

  SizeConfig._internal();

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    textScaleFactor = screenWidth / referenceScreenWidth;
    _safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    customTextScaleFactor = _mediaQueryData.copyWith(textScaleFactor: textScaleFactor);
  }

  double getWidth(double refWidth) {
    // 240 px (My phone width) * 8 (width given by desighner) / 390 (Reference by desighner)
    final w = screenWidth * refWidth / referenceScreenWidth;
    return w.ceilToDouble();
  }

  double getHeight(double refHeight) {
    final w = refHeight * (screenHeight / referenceScreenHeight);
    return w.ceilToDouble();
  }

  double getFullWidthSize(double refHeight) {
    final w = screenWidth * refHeight / referenceScreenWidth;
    return w;
  }

  double getFullHeightSize(double refHeight) {
    final w = screenHeight * refHeight / referenceScreenHeight;
    return w;
  }

  double setSp(num fontSize) => fontSize * (screenWidth / referenceScreenWidth);
}
