import 'package:bookly/features/home/persentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksViewAgain extends StatelessWidget {
  const BooksViewAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const  Text(textAlign: TextAlign.end,"You can also like",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        const  SizedBox(height: 20,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.15,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder:(context,index){
                return const CustomBookImage();
              }, separatorBuilder: (context,index)=>const SizedBox(width: 10,), itemCount: 10),
        ),
      ],
    );
  }
}
