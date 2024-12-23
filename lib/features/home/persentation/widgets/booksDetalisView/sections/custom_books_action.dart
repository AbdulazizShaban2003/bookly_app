import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 180,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft:  Radius.circular(13))
          ),
          child: const Text("19.99B",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 180,
          child: const Text("Free preview",style: TextStyle(fontSize: 21)),

          decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.8),
              borderRadius:const  BorderRadius.only(topRight: Radius.circular(13),bottomRight:  Radius.circular(13))
          ),
        ),
      ],
    );
  }
}
