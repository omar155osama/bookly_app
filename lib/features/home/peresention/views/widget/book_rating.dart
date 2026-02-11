import 'package:clean_boookly/core/Styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xFFFFDD4F), size: 14),
        const SizedBox(width: 6.3),
        Text("4.8", style: Styles.textstyle16),
        const SizedBox(width: 5),
        Opacity(opacity: 0.5, child: Text("(502)", style: Styles.textstyle14)),
      ],
    );
  }
}
