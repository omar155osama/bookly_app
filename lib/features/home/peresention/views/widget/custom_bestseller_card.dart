import 'package:flutter/material.dart';

class CustomBestsellerCard extends StatelessWidget {
  const CustomBestsellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/image/book_cover.jpg"),
          ),
        ),
      ),
    );
  }
}
