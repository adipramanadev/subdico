import 'package:flutter/material.dart';
import 'app_colors.dart';

ButtonStyle primaryButtonStyle({Color? color, Color? textColor}) {
  return ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: textColor,
    backgroundColor: color ?? secondaryColor,
    textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    shadowColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}

ButtonStyle secondaryButtonStyle() {
  return TextButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: borderColor)),
    elevation: 0,
    backgroundColor: Colors.white,
    shadowColor: Colors.transparent,
  );
}

InputDecoration commonInputDecoration(
    {String? hintText, Widget? suffix, Color? color}) {
  return InputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: color,
    counterText: '',
    hintStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.all(12),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: borderColor)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: borderColor)),
    suffix: suffix,
  );
}

/// Bold Text Style
TextStyle hsBoldTextStyle({double? size, Color? color, FontWeight? weight}) {
  return TextStyle(
    fontSize: size != null ? size : 16,
    color: color ?? (Color(0xFF2E3033)),
    fontWeight: weight ?? FontWeight.bold,
  );
}

/// Primary Text Style
TextStyle hsPrimaryTextStyle({double? size, Color? color, FontWeight? weight}) {
  return TextStyle(
    fontSize: size != null ? size : 16,
    color: color ?? (Color(0xFF2E3033)),
    fontWeight: weight ?? FontWeight.normal,
  );
}

/// Secondary Text Style
TextStyle hsSecondaryTextStyle(
    {double? size, Color? color, FontWeight? weight}) {
  return TextStyle(
    fontSize: size != null ? size : 14,
    color: color ?? Color(0xFF757575),
    fontWeight: weight ?? FontWeight.normal,
  );
}
