import 'package:fluix/Authentication/AnimatedLogin.dart';
import 'package:fluix/Authentication/Login2.dart';
import 'package:fluix/Authentication/Login3.dart';
import 'package:fluix/Authentication/Login4.dart';
import 'package:fluix/Authentication/Simple.dart';
import 'package:fluix/Authentication/home1.dart';
import 'package:fluix/Dashboard/BankDashBoard.dart';
import 'package:fluix/Dashboard/CardDashboard.dart';
import 'package:fluix/Dashboard/Dashboard1.dart';
import 'package:fluix/Dashboard/Dashboard2.dart';
import 'package:fluix/Dashboard/Dashboard3.dart';
import 'package:fluix/Drawer/AwesomeSliderDrawer.dart';
import 'package:fluix/Drawer/Foldable.dart';
import 'package:fluix/Drawer/Hidden.dart';
import 'package:fluix/Drawer/Elastic.dart';
import 'package:fluix/Drawer/Wave.dart';
import 'package:fluix/Grids/AnimatedGrid.dart';
import 'package:fluix/Grids/Staggered.dart';
import 'package:fluix/IntroSliders/IntroSlider1.dart';
import 'package:fluix/IntroSliders/IntroSlider2.dart';
import 'package:fluix/IntroSliders/IntroSlider3.dart';
import 'package:fluix/IntroSliders/IntroSlider4.dart';
import 'package:fluix/IntroSliders/LiquidIntroSlider.dart';
import 'package:fluix/Lists/SimpleRecyclerView.dart';
import 'package:fluix/Lists/WheelScroll.dart';
import 'package:fluix/Lists/slidelist.dart';
import 'package:fluix/Lists/stacklist.dart';
import 'package:fluix/Miscellaneous/AppleSliderButton.dart';
import 'package:fluix/Miscellaneous/AwesomeFluidSlider.dart';
import 'package:fluix/Miscellaneous/BiometricAuth.dart';
import 'package:fluix/Miscellaneous/CustomDialogBox.dart';
import 'package:fluix/Miscellaneous/FilePicker.dart';
import 'package:fluix/Miscellaneous/FoldableCard.dart';
import 'package:fluix/Miscellaneous/PagesTransitions.dart';
import 'package:fluix/Miscellaneous/SliverAppBarAnimation.dart';
import 'package:fluix/Miscellaneous/SuccessAnimation.dart';
import 'package:fluix/Navigation/BasicTabNavigation.dart';
import 'package:fluix/Navigation/CircleBottomBar.dart';
import 'package:fluix/Navigation/ConvexNavigation.dart';
import 'package:fluix/Navigation/CurvedNavigation.dart';
import 'package:fluix/Navigation/GoogleBar.dart';
import 'package:fluix/Settings/Setting1.dart';
import 'package:fluix/Settings/Setting3.dart';
import 'package:fluix/Settings/Settings2.dart';
import 'package:flutter/material.dart';

class Items {
  final String title;
  final Widget page;
  final String path;

  Items(this.title, this.page, this.path);
}

List<Items> authentication = [
  Items("Simple", Simple(), Simple.path),
  Items("Animated", AnimatedLogin(), AnimatedLogin.path),
  Items("Card Based", Home1(), Home1.path),
  Items("Designed", Login2(), Login2.path),
  Items("Minimal", AuthThreePage(), AuthThreePage.path),
  Items("Elegant", Login4(), Login4.path),
];

List<Items> drawer = [
  Items("Hidden", Drawer1(), Drawer1.path),
  Items("Foldable", Foldable(), Foldable.path),
  Items("Elastic", Elastic(), Elastic.path),
  Items("Wave", Wave(), Wave.path),
  Items("Slider",AwesomeSliderDrawer(),AwesomeSliderDrawer.path)
];

List<Items> navigation = [
  Items("Curved", CurvedNavigation(), CurvedNavigation.path),
  Items("Circular", CircleBottomBar(), CircleBottomBar.path),
  Items("Google Bar", GoogleBar(), GoogleBar.path),
  Items("Convexed", ConvexNavigation(), ConvexNavigation.path),
  Items("Basic Tabbed",BasicTabNavigation(),BasicTabNavigation.path)
];

List<Items> lists = [
  Items("Wheel Scroll", WheelScroll(), WheelScroll.path),
  Items("Stacked", StackList(), StackList.path),
  Items("Slideable", SlideList(), SlideList.path),
  Items("Simple Recycler",RecycleListView(),RecycleListView.path),
];

List<Items> grids = [
  Items("Staggered", Staggered(), Staggered.path),
  Items("Animated", AnimatedGrid(), AnimatedGrid.path),
];

List<Items> settings_profile = [
  Items("Google Settings", Profile1(), Profile1.path),
  Items("Social Profile",Settings2(),Settings2.path),
  Items("Simple Settings", Settings3(), Settings3.path),
];

List<Items> dashboard = [
  Items("Personalized", SimpleDashBoard(), SimpleDashBoard.path),
  Items("Card DashBoard", CardDashboard(), CardDashboard.path),
  Items("Shop Management", Dashboard2(), Dashboard2.path),
  Items('Bank DashBoard',BankDashBoard(),BankDashBoard.path),
  Items('DashBoard Outline',Dashboard3(),Dashboard3.path),
];

List<Items> introslider = [
  Items("Intro slider 1",Introslider1(),Introslider1.path),
  Items("Intro slider 2",IntroSlider2(),IntroSlider2.path),
  Items("Intro slider 3",LiquidIntroSlider(),LiquidIntroSlider.path),
  Items("Intro Slider 4",IntroSlider3(),IntroSlider3.path),
  Items("Intro Slider 5",IntroSlider4(),IntroSlider4.path),
];

List<Items> miscellaneous = [
  Items("Custom Success Dialog",CustomDialogAlert(title:"Success",imagepath: "images/XLpr.gif",desc: "Customizable images and text",buttontxt: "OK",),CustomDialogAlert.path),
  Items("Custom Error Dialog",CustomDialogAlert(title:"Failed",imagepath: "images/cross 1.jpeg",desc: "Customizable images and text",buttontxt: "OK",),CustomDialogAlert.path),
  Items("Biometric Authentication",BiometricAuth(),BiometricAuth.path),
  Items("Sliver Appbar",SliverAppBarAnimation(),SliverAppBarAnimation.path),
  Items("Success Animation",SuccessAnimation(),SuccessAnimation.Path),
  Items("Foldable Card",FoldableCard(),FoldableCard.path),
  Items("Page Transitions",PagesTransitions(),PagesTransitions.path),
  Items("File Picker",PickFiles(),PickFiles.path),
  Items("Fluid Slider",AwesomeFluidSlider(),AwesomeFluidSlider.path),
  Items("Apple Slider and Argon Buttons",AppleSliderButton(),AppleSliderButton.path)
];