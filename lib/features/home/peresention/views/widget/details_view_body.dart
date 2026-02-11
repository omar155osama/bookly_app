import 'package:clean_boookly/core/Styles/styles.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/book_action.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/book_rating.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/custom_featured_card.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/details_app_bar.dart';
import 'package:clean_boookly/features/home/peresention/views/widget/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  DetailsAppBar(),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.2,
                    child: CustomFeaturedCard(),
                  ),
                  const SizedBox(height: 43),
                  Text(
                    textAlign: TextAlign.center,
                    "Harry poter and the goblet of fire",
                    style: Styles.textstyle30,
                  ),
                  const SizedBox(height: 6),
                  Opacity(
                    opacity: 0.7,
                    child: Text("J.K Rowlling", style: Styles.textstyle18),
                  ),
                  const SizedBox(height: 18),
                  BookRating(),
                  const SizedBox(height: 37),
                  Row(
                    children: [
                      Expanded(
                        child: BookAction(
                          backgraoundColor: Colors.white,
                          textColor: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          text: r"19.99$",
                        ),
                      ),
                      Expanded(
                        child: BookAction(
                          backgraoundColor: Color(0xffef8262),
                          textColor: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          text: 'Free Preview',
                          fontsize: 16,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: const SizedBox(height: 50)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: Styles.textstyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  SimilarBookListView(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
