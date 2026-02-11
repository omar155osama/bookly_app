import 'package:clean_boookly/core/Styles/styles.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
    required this.backgraoundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontsize,
  });

  final Color backgraoundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgraoundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.textstyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize
          ),
        ),
      ),
    );
  }
}
