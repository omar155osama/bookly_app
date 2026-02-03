import 'package:clean_boookly/features/home/peresention/views/widget/bestseller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestsellerListView extends StatelessWidget {
  const BestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (context, n) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: const BestsellerListViewItem(),
        );
      },
    );
  }
}
