// ignore: file_names
import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/ColorManager.dart';

ThemeData getAppTheme(){
  return ThemeData(
    primaryColor: ColorManager.first,
    primaryColorLight: ColorManager.second,
    primaryColorDark: ColorManager.third,
    disabledColor: ColorManager.shadeGrey,

  );
}