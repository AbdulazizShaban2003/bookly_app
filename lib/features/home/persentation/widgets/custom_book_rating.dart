import 'package:flutter/material.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_border,color: Colors.yellow,),
        SizedBox(width: 5,),
        Text("4.8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        SizedBox(width: 5,),

        Text("(2390)",style: TextStyle(color: Colors.grey,fontSize: 16),),

      ],
    );
  }
}