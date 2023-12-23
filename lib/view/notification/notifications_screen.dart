import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../models/submodel.dart';
import '../../utils/app_common.dart';
import '../../utils/app_data_helpers.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<NotificationModel> notificationList = getNotificationList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('Today', style: hsBoldTextStyle()),
        ),
        Divider(color: Theme.of(context).dividerColor, thickness: 2, height: 0),
        Expanded(
          child: AnimationLimiter(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              children: notificationList.map((NotificationModel mData) {
                int index = notificationList.indexOf(mData);
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: Duration(milliseconds: 500),
                  child: SlideAnimation(
                    horizontalOffset: 44.0,
                    child: FadeInAnimation(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: mData.color!.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ImageIcon(AssetImage(mData.image!),
                                    color: mData.color, size: 26),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(mData.title!,
                                                maxLines: 1,
                                                style: hsBoldTextStyle())),
                                        SizedBox(width: 16),
                                        Text(mData.time!,
                                            style: hsSecondaryTextStyle()),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Text(mData.subTitle!,
                                        maxLines: 2,
                                        style: hsSecondaryTextStyle()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          index < notificationList.length - 1
                              ? Divider(
                                  color: Theme.of(context).dividerColor,
                                  height: 30,
                                  thickness: 1)
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
