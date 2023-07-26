import 'package:bookly/core/ulits/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Books_details_section.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const[
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
