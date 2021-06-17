import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool enableDarkMode = false;
IconData icon = Icons.brightness_3;

darkThemeData(context) {
  return ThemeData(
    primarySwatch: Colors.teal,
    primaryColor: Colors.teal,
    accentColor: Colors.teal,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1C2939),
    canvasColor: Color(0xff293849),
    focusColor: Colors.teal,
    cursorColor: Colors.teal,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
      colorScheme: ColorScheme.dark(),
      buttonColor: Colors.teal,
      splashColor: Colors.grey[900]
    ),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
      color: Color(0xff1C2939),
      iconTheme: IconThemeData(color: Colors.teal[300]),
      actionsIconTheme: IconThemeData(color: Colors.teal[300],),
    ),
    iconTheme: IconThemeData(color: Colors.teal),
  );
}

lightThemeData(context) {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    focusColor: Colors.blue,
    cursorColor: Colors.blue,
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
      colorScheme: ColorScheme.light(),
      buttonColor: Colors.blue,
      splashColor: Colors.white,
    ),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue[600]),
      actionsIconTheme: IconThemeData(color: Colors.blue[600],),
    ),
    iconTheme: IconThemeData(color: Colors.blue),
  );
}



////////////////////////////////////////////////////////////////////////// PROFILE THEME ///////////////////////////////////////////////////


const kSpacingUnit = 10;

const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kLightPrimaryColor = Color(0xFFFFFFFF);
const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color(0xFFFFC107);

final kTitleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.7),
  fontWeight: FontWeight.w600,
);

final kCaptionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.3),
  fontWeight: FontWeight.w100,
);

final kButtonTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
  fontWeight: FontWeight.w400,
  color: kDarkPrimaryColor,
);

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'SFProText',
  primaryColor: kDarkPrimaryColor,
  canvasColor: kDarkPrimaryColor,
  backgroundColor: kDarkSecondaryColor,
  accentColor: kAccentColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(
    color: kLightSecondaryColor,
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    fontFamily: 'SFProText',
    bodyColor: kLightSecondaryColor,
    displayColor: kLightSecondaryColor,
  ),
);

final kLightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'SFProText',
  primaryColor: kLightPrimaryColor,
  canvasColor: kLightPrimaryColor,
  backgroundColor: kLightSecondaryColor,
  accentColor: kAccentColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(
    color: kDarkSecondaryColor,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    fontFamily: 'SFProText',
    bodyColor: kDarkSecondaryColor,
    displayColor: kDarkSecondaryColor,
  ),
);