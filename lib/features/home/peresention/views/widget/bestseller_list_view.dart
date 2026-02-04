import 'package:clean_boookly/features/home/peresention/views/widget/bestseller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestsellerListView extends StatelessWidget {
  const BestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: BestsellerListViewItem(),
        );
      }, childCount: 20),
    );
  }
}
