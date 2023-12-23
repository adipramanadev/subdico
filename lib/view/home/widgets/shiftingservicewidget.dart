import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../models/submodel.dart';
import '../../../utils/app_common.dart';
import '../shiftingservicescreen.dart';

class ShiftingServiceWidget extends StatefulWidget {
  final ShiftingServiceModel shiftingItem;
  final int index;

  ShiftingServiceWidget(this.shiftingItem, this.index);

  @override
  State<ShiftingServiceWidget> createState() => _ShiftingServiceWidgetState();
}

class _ShiftingServiceWidgetState extends State<ShiftingServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: widget.index,
      duration: Duration(milliseconds: 500),
      child: SlideAnimation(
        horizontalOffset: 44.0,
        child: FadeInAnimation(
          child: GestureDetector(
            child: Container(
              width: 110,
              height: 135,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(right: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: widget.shiftingItem.color!.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: widget.shiftingItem.color!.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(widget.shiftingItem.imagePath!,
                        height: 20,
                        width: 20,
                        color: widget.shiftingItem.color),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                      child: Text('${widget.shiftingItem.title!} Shifting',
                          textAlign: TextAlign.center,
                          style: hsBoldTextStyle())),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ShiftingServiceScreen(
                      widget.shiftingItem.title!, widget.index);
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
