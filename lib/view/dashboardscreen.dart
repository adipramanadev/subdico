import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../components/bodycornerwidget.dart';
import '../models/submodel.dart';
import '../utils/app_colors.dart';
import '../utils/app_data_helpers.dart';
import 'notification/notifications_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  List<NavigationItemModel> navigationItemList = getNavigationItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(selectedIndex == 0
            ? 'Shifty'
            : navigationItemList[selectedIndex].title!),
        centerTitle: true,
        leading: const Icon(Icons.dashboard, color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          backgroundColor: primaryColor,
                          leading: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          title: const Text('Notification'),
                        ),
                        body: const NotificationScreen(),
                      ),
                    ));
              },
              child: const Icon(Icons.add_alert, color: Colors.white),
            ),
          ),
        ],
      ),
      body: BodyCornerWidget(child: navigationItemList[selectedIndex].widget!),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: primaryColor,
        curveSize: 70,
        top: -18,
        items: navigationItemList.map((item) {
          return TabItem(icon: item.icon, title: item.title);
        }).toList(),
        initialActiveIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          // setState(
          //   () {},
          // );
        },
      ),
    );
  }
}
