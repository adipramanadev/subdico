import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_common.dart';

class ChipWidget extends StatefulWidget {
  final String title;
  final bool selected;

  ChipWidget(this.title, {this.selected = false});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Chip(
        padding: const EdgeInsets.all(12),
        side: BorderSide(
            color: widget.selected
                ? Colors.transparent
                : Colors.grey.withOpacity(0.2)),
        backgroundColor:
            widget.selected ? secondaryColor : Theme.of(context).cardColor,
        label: Text(widget.title),
        labelStyle: hsSecondaryTextStyle(
            weight: FontWeight.bold,
            size: 14,
            color: widget.selected ? Colors.white : null),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
