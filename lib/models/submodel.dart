import 'package:flutter/material.dart';

class NavigationItemModel {
  String? title;
  IconData? icon;
  Widget? widget;
  NavigationItemModel({this.title, this.icon, this.widget});
}

class CountryModel {
  String? title;
  String? imagePath;

  CountryModel({this.title, this.imagePath});
}

class ShiftingServiceModel {
  String? title;
  String? imagePath;
  Color? color;
  Widget? widget;
  bool newData;

  ShiftingServiceModel(
      {this.title,
      this.imagePath,
      this.color,
      this.widget,
      this.newData = false});
}

class OfferAndNewsModel {
  String? title;
  List<String>? images;

  OfferAndNewsModel({this.title, this.images});
}

class HistoryModel {
  String? title;
  String? image;
  String? statusType;
  String? dateTime;
  String? address;

  HistoryModel(
      {this.title, this.image, this.statusType, this.dateTime, this.address});
}

class NotificationModel {
  String? image;
  Color? color;
  String? title;
  String? subTitle;
  String? time;

  NotificationModel(
      {this.image, this.color, this.title, this.subTitle, this.time});
}

class SettingModel {
  IconData? iconData;
  String? title;
  String? subTitle;
  Widget? widget;
  bool? isEnable;

  SettingModel(
      {this.iconData,
      this.title,
      this.subTitle,
      this.widget,
      this.isEnable = true});
}

class ContactUsModel {
  Color? color;
  String? title;
  String? subTitle;
  String? image;
  Widget? widget;

  ContactUsModel(
      {this.image, this.color, this.title, this.subTitle, this.widget});
}

class FaqModel {
  String? title;
  String? expandedText;
  bool? initiallyExpanded;

  FaqModel({this.title, this.expandedText, this.initiallyExpanded = false});
}

class HouseItemModel {
  String? image;
  Color? color;
  String? title;
  String? subTitle;
  int? dollarPrice;
  int? count;

  HouseItemModel(
      {this.image,
      this.color,
      this.title,
      this.subTitle,
      this.dollarPrice,
      this.count = 0});
}

class VehicleItemModel {
  String? image;
  String? title;
  String? capacity;

  VehicleItemModel({this.image, this.title, this.capacity});
}
