import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/features/home/persentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

import 'homeView/sections/custom_best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context, RouteHelper.navigateTo(const BookDetailsView()));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(),
                ),
              );
            },
            itemCount: 10),
      ),
    );
  }
}
