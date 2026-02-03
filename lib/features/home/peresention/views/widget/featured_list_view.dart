import 'package:clean_boookly/features/home/peresention/views/widget/custom_featured_card.dart';
import 'package:flutter/material.dart';

class FeaturedListCard extends StatelessWidget {
  const FeaturedListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, n) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: const CustomFeaturedCard(),
          );
        },
      ),
    );
  }
}
