import 'package:clean_boookly/features/home/presentation/views/widget/bestseller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, n) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const BestsellerListViewItem(),
          );
        },
      ),
    );
  }
}
