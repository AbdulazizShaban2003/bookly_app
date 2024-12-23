import 'package:flutter/material.dart';

import '../../custom_book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP._h21wToo6J2pF4lKjoxr1QHaHa?w=235&h=235&c=7&o=5&pid=1.20"),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              child: const Text(
                "Harry potter and the Goblet of Fire",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 23,
                ),
              ),
            ),
            const SizedBox(height: 6,),
            const  Text("JK. Rowling",style: TextStyle(fontSize: 18),),
            const   Row(
              children: [
                Text("19.99B",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                SizedBox(width: 50,),

                CustomBookRating()
              ],
            ),


          ],
        )
      ],
    );
  }
}
