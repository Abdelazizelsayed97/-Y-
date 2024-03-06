import 'package:flutter/material.dart';

class Styles {
  Styles._(); // Private constructor

  static TextStyle bold({
    String? fontFamily,
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? 'Somar Sans',
      fontWeight: FontWeight.w700,
      fontSize: fontSize ?? 14,
      color: color,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle semiBlod({
    String? fontFamily,
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? 'Somar Sans',
      fontWeight: FontWeight.w600,
      fontSize: fontSize ?? 14,
      color: color ?? Colors.white,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle meduim({
    String? fontFamily,
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? 'Somar Sans',
      fontWeight: FontWeight.w500,
      fontSize: fontSize ?? 14,
      color: color,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle normal({
    String? fontFamily,
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    FontStyle? fontStyle,
    TextDecoration? decoration,

  }) {
    return TextStyle(
      fontFamily: fontFamily ?? 'Somar Sans',
      fontWeight: FontWeight.w400,
      fontSize: fontSize ?? 14,
      color: color,
      fontStyle: fontStyle,
      decoration: decoration,

    );
  }

  static TextStyle light({
    String? fontFamily,
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? 'Somar Sans',
      fontWeight: FontWeight.w300,
      fontSize: fontSize ?? 14,
      color: color,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }
}
