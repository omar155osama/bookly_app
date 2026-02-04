import 'package:clean_boookly/features/home/peresention/views/widget/bestseller_list_view.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/custom_app_bar.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  FeaturedListCard(),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, bottom: 12),
                    child: const Text(
                      "Best Seller",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ],
              ),
            ),
            BestsellerListView(),
          ],
        ),
      ),
    );
  }
}
