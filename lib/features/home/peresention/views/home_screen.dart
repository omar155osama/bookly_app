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
        child: Column(
          children: [
            CustomAppBar(),
            FeaturedListCard(),
          ],
        ),
      ),
    );
  }
}

