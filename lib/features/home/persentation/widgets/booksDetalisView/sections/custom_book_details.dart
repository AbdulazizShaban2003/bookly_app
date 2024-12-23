import 'package:flutter/material.dart';

import '../../custom_book_rating.dart';

class CustomBookDetails extends StatelessWidget {
  const CustomBookDetails({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         Text(
          "The Jungle Book",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
         SizedBox(
          height: 6,
        ),
         Text(
          "Rudyard Kipling",
          style: TextStyle(fontSize: 23, color: Colors.grey),
        ),
         SizedBox(
          height: 6,
        ),
         CustomBookRating(),
      ],
    );
  }
}
