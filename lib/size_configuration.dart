import 'package:flutter/material.dart';

enum ScreenType { SMALL, MEDIUM, LARGE }

class ScreenConfig {
  BuildContext buildContext;
  double screenWidth;
  double screenHeight;
  ScreenType screenType;
  ScreenConfig(BuildContext context) {
    this.screenWidth = MediaQuery.of(context).size.width;
    this.screenHeight = MediaQuery.of(context).size.height;
    setScreen();
  }

  void setScreen() {
    if (this.screenWidth >= 320 && this.screenWidth < 375) {
      this.screenType = ScreenType.SMALL;
    }
    if (this.screenWidth >= 375 && this.screenWidth < 414) {
      this.screenType = ScreenType.MEDIUM;
    }
    if (this.screenWidth >= 414) {
      this.screenType = ScreenType.LARGE;
    }
  }
}

class WidgetSize {
  double titleFontSize;
  double descriptionFontSize;
  double footerText;
  double radius;
  double radiusText;
  ScreenConfig screenConfig;
  double footerHeight;
  double heightCardAboutUs;
  double widthLogoAppBar;
  double heightCardContactUs;
  double widthPackagesCard;
  double heightCircleHomePage;
  double heightSmallCardBookNow;
  double heightBigCardBookNow;
  double widthTextFieldRow;
  double heightTextFieldRow;
  double heightButtonPackages;
  double widthButtonPackages;
  WidgetSize(ScreenConfig screenConfig) {
    this.screenConfig = screenConfig;
    _settings();
  }

  void _settings() {
    switch (this.screenConfig.screenType) {
      case ScreenType.SMALL:
        this.titleFontSize = 21;
        this.descriptionFontSize = 14;
        this.footerText = 17;
        this.radius = 30;
        this.radiusText = 6;
        this.footerHeight = 330;
        this.heightCardAboutUs = 217;
        this.widthLogoAppBar = 170;
        this.heightCardContactUs = 700;
        this.widthPackagesCard = 135;
        this.heightCircleHomePage = 71;
        this.heightSmallCardBookNow = 203;
        this.heightBigCardBookNow = 1200;
        this.widthTextFieldRow = 163;
        this.heightTextFieldRow = 35;
        this.widthButtonPackages = 136;
        this.heightButtonPackages = 48;
        break;
      case ScreenType.MEDIUM:
        this.titleFontSize = 26;
        this.descriptionFontSize = 16;
        this.footerText = 20;
        this.radius = 45;
        this.radiusText = 9;
        this.footerHeight = 370;
        this.heightCardAboutUs = 230;
        this.widthLogoAppBar = 270;
        this.heightCardContactUs = 800;
        this.widthPackagesCard = 161.5;
        this.heightCircleHomePage = 80;
        this.heightSmallCardBookNow = 205;
        this.heightBigCardBookNow = 1330;
        this.widthTextFieldRow = 170;
        this.heightTextFieldRow = 40;
        this.widthButtonPackages = 161.5;
        this.heightButtonPackages = 50;
        break;
      case ScreenType.LARGE:
        this.titleFontSize = 26;
        this.descriptionFontSize = 16;
        this.footerText = 20;
        this.radius = 45;
        this.radiusText = 15;
        this.heightCardAboutUs = 230;
        this.widthLogoAppBar = 280;
        this.heightCardContactUs = 800;
        this.widthPackagesCard = 161;
        this.heightCircleHomePage = 80;
        this.heightSmallCardBookNow = 230;
        this.heightBigCardBookNow = 1330;
        this.widthTextFieldRow = 170;
        this.heightTextFieldRow = 40;
        this.widthButtonPackages = 180;
        this.heightButtonPackages = 50;
        break;
      default:
        this.titleFontSize = 26;
        this.descriptionFontSize = 16;
        this.footerText = 20;
        this.radius = 45;
        this.footerHeight = 370;
        this.heightCardAboutUs = 230;
        this.widthLogoAppBar = 235;
        this.heightCardContactUs = 750;
        this.widthPackagesCard = 140;
        this.heightCircleHomePage = 80;
        this.heightSmallCardBookNow = 230;
        this.heightBigCardBookNow = 1330;
        this.widthTextFieldRow = 170;
        this.heightTextFieldRow = 40;
        this.widthButtonPackages = 161.5;
        this.heightButtonPackages = 50;
        break;
    }
  }
}
