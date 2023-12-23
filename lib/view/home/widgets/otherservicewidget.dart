import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../models/submodel.dart';
import '../../../utils/app_common.dart';

class OtherServicesWidget extends StatefulWidget {
  final ShiftingServiceModel item;
  final int index;
  OtherServicesWidget(this.item, this.index);

  @override
  State<OtherServicesWidget> createState() => _OtherServicesWidgetState();
}

class _OtherServicesWidgetState extends State<OtherServicesWidget> {
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
              width: 100,
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16, top: 12),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: widget.item.color!.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: ImageIcon(AssetImage(widget.item.imagePath!),
                              size: 30, color: widget.item.color),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.item.title!,
                          style: hsBoldTextStyle(size: 14),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  widget.item.newData
                      ? Container(
                          height: 25,
                          width: 60,
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                          alignment: Alignment.center,
                          child: Text('Baru',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          decoration: BoxDecoration(
                            color: widget.item.color,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            onTap: () {
              if (widget.item.widget != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return widget.item.widget!;
                    },
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
