import 'package:flutter/material.dart';

import '../../models/submodel.dart';
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
    return const Placeholder();
  }
}
