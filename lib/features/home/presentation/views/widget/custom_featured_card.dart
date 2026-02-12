import 'package:flutter/material.dart';

class CustomFeaturedCard extends StatelessWidget {
  const CustomFeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/image/book_cover.jpg"),
          ),
        ),
      ),
    );
  }
}
