import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../models/submodel.dart';
import '../../utils/app_common.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_data_helpers.dart';
import 'widgets/chipwidget.dart';
import 'widgets/otherservicewidget.dart';
import 'widgets/shiftingservicewidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ShiftingServiceModel> shiftingServiceList = getShiftingServiceList();
  List<OfferAndNewsModel> offerAndNewList = getOfferAndNewsList();
  List<ShiftingServiceModel> otherServicesList = getOtherServicesList();
  int selectedOfferIndex = 0;
  List<String> offerImages = [];

  @override
  void initState() {
    super.initState();
    offerImages.addAll(offerAndNewList[0].images!);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Text('Selamat Datang',
                style: hsBoldTextStyle(size: headingFontSize)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text('Butuh bantuan hari ini?',
                style: hsSecondaryTextStyle(size: subHeadingFontSize)),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: shiftingServiceList.map((item) {
                int index = shiftingServiceList.indexOf(item);
                return ShiftingServiceWidget(item, index);
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
            child: Text('Penawaran & Berita', style: hsBoldTextStyle()),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: AnimationLimiter(
                child: Row(
                  children: offerAndNewList.map((item) {
                    int index = offerAndNewList.indexOf(item);
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: Duration(milliseconds: 500),
                      child: SlideAnimation(
                        horizontalOffset: 44.0,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            child: ChipWidget(item.title!,
                                selected: selectedOfferIndex == index),
                            onTap: () {
                              selectedOfferIndex = index;
                              offerImages.clear();
                              offerImages.addAll(item.images!);
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Container(
            height: 140,
            child: AnimationLimiter(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemCount: offerImages.length,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: Duration(milliseconds: 500),
                    child: SlideAnimation(
                      horizontalOffset: 44.0,
                      child: FadeInAnimation(
                        child: Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(offerImages[index],
                                height: 140, width: 250, fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 8, right: 16),
            child: Text('Layanan Lainnya', style: hsBoldTextStyle()),
          ),
          Container(
            height: 140,
            child: AnimationLimiter(
              child: ListView(
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                children: otherServicesList.map((item) {
                  int index = otherServicesList.indexOf(item);
                  return OtherServicesWidget(item, index);
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
