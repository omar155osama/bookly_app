import 'package:clean_boookly/core/Styles/styles.dart';
import 'package:clean_boookly/core/utils/app_router.dart';
import 'package:clean_boookly/core/utils/constant.dart';
import 'package:clean_boookly/features/home/presentation/views/widget/book_rating.dart';
import 'package:clean_boookly/features/home/presentation/views/widget/custom_bestseller_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsScreen);
      },
      child: InkWell(
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              CustomBestsellerCard(),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 6),
                    Text(
                      "Harry poter and the goblet of fire",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.textstyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text("J.K Rowlling", style: Styles.textstyle14),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r"19.99$",
                          style: Styles.textstyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
