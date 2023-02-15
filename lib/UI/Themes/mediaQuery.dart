import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizedHorizatal;
  static double? blockSizedVertical;
  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight =  _mediaQueryData!.size.height;
    blockSizedHorizatal = screenWidth!/100;
    screenHeight = screenHeight!/100;
  }
}