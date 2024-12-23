
import 'package:bookly/features/home/persentation/widgets/booksDetalisView/sections/custom_appBar_book_details_view.dart';
import 'package:bookly/features/home/persentation/widgets/booksDetalisView/sections/custom_book_details.dart';
import 'package:bookly/features/home/persentation/widgets/booksDetalisView/sections/custom_books_action.dart';
import 'package:bookly/features/home/persentation/widgets/booksDetalisView/sections/custom_books_view_again.dart';
import 'package:bookly/features/home/persentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width*0.07),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  const CustomAppBarBookDetailsView(),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                    child: const CustomBookImage(),
                  ),
                  const Expanded(
                    child:  SizedBox(
                      height: 40,
                    ),
                  ),
                  CustomBookDetails(width: width),
                  const SizedBox(
                    height: 30,
                  ),
                  const  BooksAction(),
                  const SizedBox(height: 30,),
                  const  BooksViewAgain(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




