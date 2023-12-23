import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:subdico/utils/app_colors.dart';

import '../../models/submodel.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_common.dart';
import '../../utils/app_data_helpers.dart';

class ProfileScreen extends StatelessWidget {
  List<SettingModel> generalSettingList = getGeneralSettingList();
  List<SettingModel> notificationSettingList = getNotificationSettingList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      profile,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Herry Prasetyo', style: hsBoldTextStyle()),
                  SizedBox(height: 4),
                  Text('herry081288@gmail.com',
                      style: hsPrimaryTextStyle(color: secondaryColor)),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return EditProfileScreen();
                      //     },
                      //   ),
                      // );
                    },
                    child: Text('Edit Profile', style: hsBoldTextStyle()),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(color: secondaryColor, width: 1.5),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text('GENERAL',
                style: hsPrimaryTextStyle(size: 18, color: secondaryColor)),
            SizedBox(height: 8),
            AnimationLimiter(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: generalSettingList.map((SettingModel mData) {
                  return AnimationConfiguration.staggeredList(
                    position: generalSettingList.indexOf(mData),
                    duration: Duration(milliseconds: 500),
                    child: SlideAnimation(
                      child: FadeInAnimation(
                        // child: GeneralSettingWidget(mData),
                        child: Text('data'),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16),
            Text('NOTIFICATIONS',
                style: hsPrimaryTextStyle(size: 18, color: secondaryColor)),
            SizedBox(height: 8),
            AnimationLimiter(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: notificationSettingList.map((SettingModel mData) {
                  return AnimationConfiguration.staggeredList(
                    position: notificationSettingList.indexOf(mData),
                    duration: Duration(milliseconds: 500),
                    child: SlideAnimation(
                      child: FadeInAnimation(
                        // child: NotificationSettingWidget(mData),
                        child: Text('data'),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16),
            Text('MORE',
                style: hsPrimaryTextStyle(size: 18, color: secondaryColor)),
            SizedBox(height: 8),
            // GeneralSettingWidget(
            //   SettingModel(
            //     title: 'Contact Us',
            //     subTitle: 'For more information',
            //     iconData: Icons.phone,
            //     widget: ContactUsScreen(),
            //   ),
            // ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.logout, color: Colors.black),
              ),
              title: Text('Logout', style: hsPrimaryTextStyle(), maxLines: 1),
              trailing: Icon(Icons.navigate_next, color: Colors.black),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
