import 'package:bookly/core/theme/styles.dart';
import 'package:bookly/features/home/persentation/widgets/custom_best_seller_list_view.dart';
import 'package:bookly/features/home/persentation/widgets/homeView/sections/custom_appBar_home_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/strings_manager.dart';
import '../widgets/custom_book_list_view.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBarHome(),
            const SizedBox(height: 25),
            const CustomListView(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(StringManager.titleMedium, style: TextStylesManager.titleMedium),
            ),
            const BestSellerListView()
          ],
        ),
      ),
    );
  }
}



