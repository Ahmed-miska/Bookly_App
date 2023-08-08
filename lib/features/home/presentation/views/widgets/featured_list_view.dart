import 'package:bookly/core/ulits/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indcator.dart';
import 'package:bookly/features/home/presentation/manger/Featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics:BouncingScrollPhysics() ,
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: FeaturedListViewItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return CustomLoadingIndecator();
        }
      },
    );
  }
}
