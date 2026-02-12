import 'package:clean_boookly/features/search/presentation/views/widget/custom_text_filed.dart';
import 'package:clean_boookly/features/search/presentation/views/widget/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomTextFiled(),
          const SizedBox(height: 8),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
