import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ReAutoSizeText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final int maxlines;
  final double letterSpacing;
  ReAutoSizeText({
    Key key,
    this.maxlines,
    this.fontWeight,
    this.letterSpacing,
    @required this.text,
    this.fontsize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text ?? "Null",
      maxFontSize: fontsize,
      minFontSize: fontsize - 3,
      maxLines: maxlines ?? 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          letterSpacing: letterSpacing ?? 1.0,
          fontWeight: fontWeight,
          fontFamily: "Raleway",
          fontSize: fontsize),
    );
  }
}
