import 'package:flutter/material.dart';
import 'package:subdico/models/submodel.dart';
import 'package:subdico/utils/app_assets.dart';
import 'package:subdico/utils/app_colors.dart';

import '../view/history/historyscreen.dart';
import '../view/home/cleaning_service.dart';
import '../view/home/homescreen.dart';
import '../view/home/vechilescreen.dart';
import '../view/notification/notifications_screen.dart';
import '../view/profile/addsocialaccount.dart';
import '../view/profile/faq_screen.dart';
import '../view/profile/profilescreen.dart';
import 'app_constants.dart';

List<NavigationItemModel> getNavigationItems() {
  List<NavigationItemModel> list = [];
  list.add(NavigationItemModel(
      icon: Icons.home, title: 'Home', widget: HomeScreen()));
  list.add(NavigationItemModel(
      icon: Icons.history, title: 'History', widget: HistoryScreen()));
  list.add(NavigationItemModel(
      icon: Icons.notifications,
      title: 'Notification',
      widget: NotificationScreen()));
  list.add(NavigationItemModel(
      icon: Icons.person, title: 'Profile', widget: ProfileScreen()));
  return list;
}

List<CountryModel> getCountryList() {
  List<CountryModel> list = [];
  list.add(CountryModel(title: "Indonesia (+62)", imagePath: ic_indo));
  list.add(CountryModel(title: "United States (+1)", imagePath: ic_us));
  list.add(CountryModel(title: "United Kingdom (+92)", imagePath: ic_uk));
  return list;
}

List<ShiftingServiceModel> getShiftingServiceList() {
  List<ShiftingServiceModel> list = [];
  list.add(ShiftingServiceModel(
      title: 'House', imagePath: ic_house, color: Colors.red));
  list.add(ShiftingServiceModel(
      title: 'Office', imagePath: ic_office, color: secondaryColor));
  list.add(ShiftingServiceModel(
      title: 'Commercial', imagePath: ic_commercial, color: Colors.blue));
  return list;
}

List<OfferAndNewsModel> getOfferAndNewsList() {
  List<OfferAndNewsModel> list = [];
  list.add(OfferAndNewsModel(
      title: 'Trending', images: [offer_image1, offer_image2]));
  list.add(OfferAndNewsModel(
      title: 'Promotion', images: [offer_image3, offer_image4]));
  list.add(OfferAndNewsModel(
      title: 'Summer Offer', images: [offer_image5, offer_image6]));
  list.add(OfferAndNewsModel(
      title: 'New Collection', images: [offer_image7, offer_image8]));
  return list;
}

List<HistoryModel> getHistoryList() {
  List<HistoryModel> list = [];
  list.add(HistoryModel(
      title: 'House Shifting Service',
      image: map_img,
      address: '3329 joyce Street, PA, USA',
      dateTime: 'Friday, May 11, 2021',
      statusType: statusTypeActive));
  list.add(HistoryModel(
      title: 'Painting Service',
      image: map_img,
      address: '3329 joyce Street, PA, USA',
      dateTime: 'Friday, May 11, 2021',
      statusType: statusTypeCancelled));
  list.add(HistoryModel(
      title: 'Cleaning Service',
      image: map_img,
      address: '3329 joyce Street, PA, USA',
      dateTime: 'Sunday, January 03, 2021',
      statusType: statusTypeDone));
  return list;
}

List<ShiftingServiceModel> getOtherServicesList() {
  List<ShiftingServiceModel> list = [];
  list.add(ShiftingServiceModel(
      title: 'Cleaning',
      color: greenColor,
      imagePath: ic_cleaning,
      newData: true,
      widget: CleaningServiceScreen(title: 'Cleaning')));
  list.add(ShiftingServiceModel(
      title: 'Vehicle',
      color: Colors.purple,
      imagePath: ic_vehicle,
      widget: VehicleServiceScreen()));
  list.add(ShiftingServiceModel(
      title: 'Labour Service',
      color: Colors.blue,
      imagePath: ic_labour,
      widget: CleaningServiceScreen(title: 'Labour')));
  list.add(ShiftingServiceModel(
      title: 'Painting',
      color: Colors.pink,
      imagePath: ic_painting,
      widget: CleaningServiceScreen(title: 'Painting')));
  return list;
}

List<NotificationModel> getNotificationList() {
  List<NotificationModel> list = [];
  list.add(
    NotificationModel(
      title: 'Reminder',
      subTitle: 'House Shifting - #2F33J scheduled Tomorrow.',
      color: Colors.blue,
      time: '13 min',
      image: ic_reminder,
    ),
  );
  list.add(
    NotificationModel(
      title: 'You have a new message',
      subTitle:
          '\"Hey! I looked your problem and it\'s fix now. can you confirm?\"',
      color: secondaryColor,
      time: '1 hr',
      image: ic_message,
    ),
  );
  list.add(
    NotificationModel(
      title: 'Order Confirmed',
      subTitle: 'Your vehicle - Mini Van Order is successfully placed.',
      color: greenColor,
      time: '2 hr',
      image: ic_order,
    ),
  );
  list.add(
    NotificationModel(
      title: 'Summer Offer',
      subTitle: '50% off on House Painting service until November 23rd.',
      color: Colors.red,
      time: '2 hr',
      image: ic_summer_offer,
    ),
  );
  return list;
}

List<SettingModel> getGeneralSettingList() {
  List<SettingModel> list = [];
  list.add(SettingModel(
      iconData: Icons.payment,
      title: 'Payment Methods',
      subTitle: 'Add your credit & debit cards'));
  list.add(SettingModel(
      iconData: Icons.location_on,
      title: 'Locations',
      subTitle: 'Add your home & work locations'));
  list.add(SettingModel(
      iconData: Icons.person,
      title: 'Add Social Account',
      subTitle: 'Add Facebook, Instagram, Twitter etc',
      widget: AddSocialAccountScreen()));
  list.add(SettingModel(
      iconData: Icons.wc,
      title: 'Refer to Friends',
      subTitle: 'Get \$10 for reffering friends'));
  return list;
}

List<SettingModel> getNotificationSettingList() {
  List<SettingModel> list = [];
  list.add(SettingModel(
      title: 'Push Notifications', subTitle: 'For daily updates and others'));
  list.add(SettingModel(
      title: 'Promotional Notifications', subTitle: 'New Campaign & offers'));
  return list;
}

List<ContactUsModel> getContactUsList() {
  List<ContactUsModel> list = [];
  list.add(ContactUsModel(
      image: ic_chat,
      color: greenColor,
      title: 'Support Chat',
      subTitle: '24*7 Online Support'));
  list.add(ContactUsModel(
      image: ic_call,
      color: secondaryColor,
      title: 'Call Center',
      subTitle: '24*7 Customer Service'));
  list.add(ContactUsModel(
      image: ic_email,
      color: Colors.purple,
      title: 'Email',
      subTitle: 'admin@shify.com'));
  list.add(ContactUsModel(
      image: ic_faq,
      color: Colors.yellow,
      title: 'FAQ',
      subTitle: '+50 Answers',
      widget: FaqScreen()));
  return list;
}

List<FaqModel> getGeneralFaqList() {
  List<FaqModel> list = [];
  list.add(
      FaqModel(title: 'How to contact with riders ?', expandedText: 'N/A'));
  list.add(FaqModel(
      title: 'How to change my selected furniture ?', expandedText: 'N/A'));
  list.add(FaqModel(title: 'What is cost of this item ?', expandedText: 'N/A'));
  return list;
}

List<FaqModel> getContactFaqList() {
  List<FaqModel> list = [];
  list.add(FaqModel(
      title: 'What is the customer care number ?', expandedText: 'N/A'));
  list.add(FaqModel(
      title: 'Can I cancel the order after one week ?',
      expandedText:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initiallyExpanded: true));
  list.add(
      FaqModel(title: 'How to call any service now ?', expandedText: 'N/A'));
  return list;
}

List<HouseItemModel> getHouseSizeList() {
  List<HouseItemModel> list = [];
  list.add(HouseItemModel(
      image: house_1, title: '2 Bedrooms\n1 kitchen', color: secondaryColor));
  list.add(HouseItemModel(
      image: house_2,
      title: '3 Bedrooms\n1 kitchen',
      color: Colors.blueAccent));
  list.add(HouseItemModel(
      image: house_3,
      title: '4 Bedrooms\n1 kitchen',
      color: Colors.pinkAccent));
  return list;
}

List<HouseItemModel> getOfficeSizeList() {
  List<HouseItemModel> list = [];
  list.add(HouseItemModel(
      image: office_1, title: 'Small Office', color: secondaryColor));
  list.add(HouseItemModel(
      image: office_2, title: 'Large Office', color: Colors.blueAccent));
  list.add(HouseItemModel(
      image: office_3, title: 'Multiple Office', color: Colors.pinkAccent));
  return list;
}

List<HouseItemModel> getFurnitureList() {
  List<HouseItemModel> list = [];
  list.add(HouseItemModel(title: 'Bed', color: Colors.purple, image: bed));
  list.add(HouseItemModel(title: 'Sofa', color: secondaryColor, image: sofa));
  list.add(
      HouseItemModel(title: 'Chair', color: Colors.blueAccent, image: chair));
  list.add(
      HouseItemModel(title: 'Almira', color: Colors.orange, image: almira));
  list.add(HouseItemModel(title: 'AC', color: Colors.red, image: ac));
  list.add(HouseItemModel(title: 'Fridge', color: Colors.blue, image: fridge));
  list.add(HouseItemModel(title: 'Oven', color: Colors.yellow, image: oven));
  list.add(HouseItemModel(title: 'TV', color: Colors.green, image: tv));
  list.add(
      HouseItemModel(title: 'Wardrobe', color: Colors.pink, image: wardrobe));
  return list;
}

List<HouseItemModel> getOfficeItemList() {
  List<HouseItemModel> list = [];
  list.add(HouseItemModel(title: 'Bed', color: Colors.purple, image: bed));
  list.add(HouseItemModel(title: 'Sofa', color: secondaryColor, image: sofa));
  list.add(
      HouseItemModel(title: 'Chair', color: Colors.blueAccent, image: chair));
  list.add(HouseItemModel(title: 'AC', color: Colors.red, image: ac));
  return list;
}

List<HouseItemModel> getOtherItems() {
  List<HouseItemModel> list = [];
  list.add(HouseItemModel(
      title: 'Packed Boxes',
      subTitle: 'Weight below 10 kg',
      image: ic_box,
      count: 0));
  list.add(HouseItemModel(
      title: 'Workers',
      subTitle: 'Regular cost is \$5/hr.Total cost will be calculated later.',
      image: ic_working_person,
      count: 0));
  list.add(HouseItemModel(
      title: 'Electrician',
      subTitle: 'Regular cost is \$10/hr.Total cost will be calculated later.',
      image: ic_working_person,
      count: 0));
  return list;
}

List<HouseItemModel> getCleaningServiceItems() {
  List<HouseItemModel> list = [];
  list.add(HouseItemModel(
      title: 'Required Person',
      subTitle: 'Regular cost is \$10/hr.Total cost will be calculated later.',
      image: ic_clock,
      count: 0));
  list.add(HouseItemModel(
      title: 'Working Hour',
      subTitle: 'Cost will be increase after  2hrs of work.',
      image: ic_working_person,
      count: 2));
  return list;
}

List<String> getCleaningOfferImages() {
  List<String> list = [cleaning_offer1, cleaning_offer2];
  return list;
}

List<String> getLabourOfferImages() {
  List<String> list = [labour_offer1, labour_offer2];
  return list;
}

List<String> getPaintingOfferImages() {
  List<String> list = [painting_offer1, painting_offer2];
  return list;
}

List<String> getVehicleOfferImages() {
  List<String> list = [vehicle_offer1, vehicle_offer2];
  return list;
}

List<String> getPickTimeList() {
  List<String> list = [
    '07:00 AM',
    '11:00 AM',
    '12:00 PM',
    '02:00 PM',
    '04:00 PM',
    '06:00 PM'
  ];
  return list;
}

List<VehicleItemModel> getPickupVehicleList() {
  List<VehicleItemModel> list = [];
  list.add(VehicleItemModel(
      title: 'Mini Truck', image: mini_truck, capacity: '18 Ton'));
  list.add(VehicleItemModel(title: 'Pickup', image: car2, capacity: '12 Ton'));
  list.add(VehicleItemModel(title: 'Large', image: car, capacity: '5 Ton'));
  return list;
}

List<VehicleItemModel> getVehicleItemList() {
  List<VehicleItemModel> list = [];
  list.add(VehicleItemModel(
      title: 'Mini Truck', image: mini_truck, capacity: '18 Ton. 9 feet'));
  list.add(VehicleItemModel(
      title: 'Pickup', image: car2, capacity: '12 Ton, 7 feet'));
  list.add(
      VehicleItemModel(title: 'Large', image: car, capacity: '5 Ton, 14 feet'));
  return list;
}

List<HouseItemModel> getOrderDetailsList() {
  List<HouseItemModel> list = [];
  list.add(
    HouseItemModel(
      image: house2,
      color: Colors.blueAccent,
      title: '3 Bedrooms, 1 kitchen',
      subTitle: '+\$5 for baby room',
      dollarPrice: 22,
    ),
  );
  var sofa_image2 = sofa_image;
  list.add(
    HouseItemModel(
      image: sofa_image2,
      title: '8 Furniture, 6 Boxes',
      subTitle: '+\$5 for additional box',
      dollarPrice: 30,
      color: Colors.purple,
    ),
  );
  list.add(
    HouseItemModel(
      image: worker,
      color: Colors.pinkAccent,
      title: '3 Worker, 1 Electrician',
      subTitle: '+\$5 for additional person',
      dollarPrice: 15,
    ),
  );
  return list;
}
