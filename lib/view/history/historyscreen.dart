import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../models/submodel.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_common.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_data_helpers.dart';

class HistoryScreen extends StatelessWidget {
  List<HistoryModel> historyList = getHistoryList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'This Month',
                    style: hsBoldTextStyle(),
                  ),
                ),
                Icon(Icons.dashboard),
              ],
            ),
          ),
          Divider(
              color: Theme.of(context).dividerColor, thickness: 2, height: 0),
          Expanded(
            child: Container(
              color: borderColor,
              child: AnimationLimiter(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16),
                  children: historyList.map((HistoryModel mData) {
                    return AnimationConfiguration.staggeredList(
                      position: historyList.indexOf(mData),
                      duration: Duration(milliseconds: 500),
                      child: SlideAnimation(
                        child: FadeInAnimation(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          mData.image!,
                                          height: 150,
                                          width: MediaQuery.of(context)
                                              .size
                                              .height,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: mData.statusType ==
                                                  statusTypeCancelled
                                              ? secondaryColor
                                              : mData.statusType ==
                                                      statusTypeDone
                                                  ? primaryColor
                                                  : greenColor,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        margin: EdgeInsets.all(8),
                                        child: Text(mData.statusType!,
                                            style: hsPrimaryTextStyle(
                                                color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(mData.title!,
                                            style: hsBoldTextStyle()),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 4, bottom: 8),
                                          child: Text(mData.dateTime!,
                                              style: hsSecondaryTextStyle(
                                                  color: Colors.grey,
                                                  size: 14)),
                                        ),
                                        Divider(
                                            color:
                                                Theme.of(context).dividerColor,
                                            thickness: 2),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,
                                                size: 30, color: greenColor),
                                            SizedBox(width: 10),
                                            Text(mData.address!,
                                                style: hsBoldTextStyle(
                                                    weight: FontWeight.w700,
                                                    size: 14)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
