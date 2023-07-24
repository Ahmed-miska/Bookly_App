import 'package:bookly/core/ulits/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeaturedBooksList(),
      ],
    );
  }
}

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
