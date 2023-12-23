import 'package:flutter/material.dart';

class BodyCornerWidget extends StatefulWidget {
  final Widget child;
  final Color? color;
  BodyCornerWidget({required this.child, this.color});

  @override
  State<BodyCornerWidget> createState() => _BodyCornerWidgetState();
}

class _BodyCornerWidgetState extends State<BodyCornerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color ?? Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: widget.child,
    );
  }
}
