import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:  [
                CustomBookDetailsAppBar(),
                BookDetailsSection(book: bookModel),
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
